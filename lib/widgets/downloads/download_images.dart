import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DownloadImage extends StatelessWidget {
  const DownloadImage(
      {Key? key,
      required this.angel,
      required this.image,
      required this.margin,
      required this.height,
      required this.width,
      this.icon})
      : super(key: key);
  final double angel;
  final image;
  final margin;
  final icon;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angel * pi / 180,
      child: Container(
        child: icon,
        margin: margin,
        width: width,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                fit: BoxFit.fitHeight, image: NetworkImage(image))),
      ),
    );
  }
}
