import 'dart:io';
import 'package:blink/app/modules/carousel_itens/carousel_itens_controller.dart';
import 'package:blink/app/modules/video_players/video_players_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CarouselItensPage extends StatefulWidget {
  final String title;
  final Directory directory;
  const CarouselItensPage({Key key, this.title = "Carousel", this.directory})
      : super(key: key);

  @override
  _CarouselItensPageState createState() => _CarouselItensPageState();
}

class _CarouselItensPageState
    extends ModularState<CarouselItensPage, CarouselItensController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    //int index = 0;
    var imageList = widget.directory
        .listSync()
        .map((item) => item.path)
        .toList(growable: false);

    return Scaffold(
      body: Builder(
        builder: (context) {
          final double height = MediaQuery.of(context).size.height;
          final double width = MediaQuery.of(context).size.width;
          return CarouselSlider(
            options: CarouselOptions(
                height: height,
                viewportFraction: 1.0,
                enlargeCenterPage: false,
                autoPlayInterval: Duration(seconds: 10),
                autoPlay: true),
            items: imageList.asMap().entries.map((item) {
              int index = item.key;
              if (imageList[index].endsWith('.jpg') ||
                  imageList[index].endsWith('.jpeg') ||
                  imageList[index].endsWith('.png')) {
                return Container(
                  child: Image.file(
                    File(imageList[index]),
                    fit: BoxFit.cover,
                  ),
                );
              } else if (imageList[index].endsWith('.mp4')) {
                return Container(child: VideoPlayersPage());
              } else {
                return Container(
                    height: height,
                    width: width,
                    color: Colors.black,
                    child: Center(
                      child: Text('Formato Inválido',
                          style: TextStyle(color: Colors.white)),
                    ));
              }
            }).toList(),
          );
        },
      ),
    );
  }
}
