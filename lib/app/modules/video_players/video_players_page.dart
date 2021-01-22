import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:video_player/video_player.dart';
import 'video_players_controller.dart';

class VideoPlayersPage extends StatefulWidget {
  final String title;
  const VideoPlayersPage({Key key, this.title = "VideoPlayer"})
      : super(key: key);

  @override
  _VideoPlayersPageState createState() => _VideoPlayersPageState();
}

class _VideoPlayersPageState
    extends ModularState<VideoPlayersPage, VideoPlayersController> {
      

  int index = 0;
  double _position = 0;
  double _buffer = 0;
  bool _lock = true;
  Map<String, VideoPlayerController> _controllers = {};
  Map<int, VoidCallback> _listeners = {};
  Set<String> _urls = {
    'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
  };

  @override
  void initState() {
    if (_urls.length > 0) {
      _initController(0).then((_) {
        _playController(0);
      });
    }

    if (_urls.length > 1) {
      _initController(1).whenComplete(() => _lock = false);
    }

    super.initState();
  }

  VoidCallback _listenerSpawner(index) {
    return () {
      int dur = _controller(index).value.duration.inMilliseconds;
      int pos = _controller(index).value.position.inMilliseconds;
      int buf = _controller(index).value.buffered.last.end.inMilliseconds;

      setState(() {
        if (dur <= pos) {
          _position = 0;
          return;
        }
        _position = pos / dur;
        _buffer = buf / dur;
      });
      if (dur - pos < 1) {
        if (index < _urls.length - 1) {
          _nextVideo();
        }
      }
    };
  }

  VideoPlayerController _controller(int index) {
    return _controllers[_urls.elementAt(index)];
  }

  Future<void> setLooping(bool looping) async {
    await _controller(index).setLooping(looping);
  }

  Future<void> _initController(int index) async {
    var controller = VideoPlayerController.network(_urls.elementAt(index));
    _controllers[_urls.elementAt(index)] = controller;
    await controller.initialize();
  }

  void _removeController(int index) {
    _controller(index).dispose();
    _controllers.remove(_urls.elementAt(index));
    _listeners.remove(index);
  }

  void _stopController(int index) {
    _controller(index).removeListener(_listeners[index]);
    _controller(index).pause();
    _controller(index).seekTo(Duration(milliseconds: 0));
  }

  void _playController(int index) async {
    if (!_listeners.keys.contains(index)) {
      _listeners[index] = _listenerSpawner(index);
    }
    _controller(index).addListener(_listeners[index]);
    await _controller(index).play();
    setState(() {});
  }

  void _nextVideo() async {
    if (_lock || index == _urls.length - 1) {
      return;
    }
    _lock = true;

    _stopController(index);

    if (index - 1 >= 0) {
      _removeController(index - 1);
    }

    _playController(++index);

    if (index == _urls.length - 1) {
      _lock = false;
    } else {
      _initController(index + 1).whenComplete(() => _lock = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GestureDetector(
            onLongPressStart: (_) => _controller(index).pause(),
            onLongPressEnd: (_) => _controller(index).play(),
            child: Center(
              child: AspectRatio(
                aspectRatio: _controller(index).value.aspectRatio,
                child: Center(child: VideoPlayer(_controller(index))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
