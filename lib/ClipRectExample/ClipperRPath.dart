import 'package:flutter/material.dart';

class ClipperRPath extends CustomClipper<RRect>{

  @override
  RRect getClip(Size size) {
    return RRect.fromRectAndCorners(
      Rect.fromCenter(
          center: Offset(100, 100),
          width: 200,
          height: 100
      ),
      topLeft: Radius.circular(50),
      bottomRight: Radius.circular(50)
    );
  }

  @override
  bool shouldReclip(CustomClipper<RRect> oldClipper) {
    return false;
  }
}