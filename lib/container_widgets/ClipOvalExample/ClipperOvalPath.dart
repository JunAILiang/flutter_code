import 'package:flutter/material.dart';

class ClipperOvalPath extends CustomClipper<Rect>{
  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(50, 50, size.width - 20, size.height - 20);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return false;
  }
}