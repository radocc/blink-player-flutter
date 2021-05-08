import 'package:flutter/material.dart';

class InputHandler extends StatefulWidget {
  final TextAlign textAlign;
  final int maxLines;
  final String initial;
  final String Function(String) validate;
  final Function(String) update;
  final Widget Function(TextEditingController) button;

  const InputHandler({
    this.textAlign = TextAlign.left,
    this.initial,
    this.maxLines = 1,
    this.validate,
    @required this.update,
    this.button,
  });

  @override
  State<StatefulWidget> createState() => InputHandlerState();
}

class InputHandlerState extends State<InputHandler> {
  TextEditingController _controller;
  String error;
  Function() update;

  @override
  void initState() {
    update = () {
      setState(() {
        if (widget.validate == null) {
          widget.update(_controller.text);
          error = null;
          return;
        }
        error = widget.validate(_controller.text);
        if (error == null) {
          widget.update(_controller.text);
        }
      });
    };
    _controller = TextEditingController()
      ..text = widget.initial
      ..addListener(update);
    super.initState();
  }

  @override
  void didUpdateWidget(covariant InputHandler oldWidget) {
    super.didUpdateWidget(oldWidget);
    _controller.removeListener(update);
    _controller.text = widget.initial;
    _controller.addListener(update);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Colors.black38,
        ),
      ),
      padding: const EdgeInsets.all(4),
      margin: const EdgeInsets.all(4),
      child: TextFormField(
            textDirection: TextDirection.rtl,

        textAlign: widget.textAlign,
        maxLines: widget.maxLines,
        controller: _controller,
        decoration: InputDecoration(
          errorText: error,
          icon: widget.button != null ? widget.button(_controller) : null,
          isDense: true,
          border: InputBorder.none,
        ),
      ),
    );
  }
}