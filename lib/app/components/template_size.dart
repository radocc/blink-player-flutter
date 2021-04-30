import 'package:blink/app/shared/screen_size.dart';
import 'package:flutter/material.dart';

class TemplateSizeWidget extends StatefulWidget {
  final double valueTopPositioned;
  final double valueLeftPositioned;
  final BuildContext context;

  const TemplateSizeWidget(
      {Key key, this.valueTopPositioned, this.valueLeftPositioned, this.context })
      : super(key: key);

  @override
  _TemplateSizeWidgetState createState() => _TemplateSizeWidgetState();
}

class _TemplateSizeWidgetState extends State<TemplateSizeWidget> {

  @override
  Widget build(BuildContext context) {
    ScreenSize controller = ScreenSize();

    return Scaffold(
        body: Container(
          width: controller.totalWidth(context: context),
          height: controller.totalHeight(context: context),
          child: Container(
            height: 300.0,
            child: Stack(
              children: [
                Container(
                  child: Image.asset(
                    'assets/teste.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: widget.valueTopPositioned,
                  left: widget.valueLeftPositioned,
                  child: Container(
                    child: Row(
                      children: [
                        Text(
                          '07  23  14  45  06  33',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: controller.totalWidth(context: context) /
                                  20.0,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
                // Positioned(
                //   top: widget.valueTopPositioned,
                //   left: widget.valueLeftPositioned,
                //   child: Container(
                //     child: Row(
                //       children: [
                //         Text(
                //           'Numero Mega cena',
                //           style: TextStyle(
                //               color: Colors.white,
                //               fontSize: controller.totalWidth(context: context) /
                //                   20.0,
                //               fontWeight: FontWeight.w700),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      );
  }
}

