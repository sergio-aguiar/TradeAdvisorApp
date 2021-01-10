import 'package:flutter/cupertino.dart';

class LogoClipper extends CustomClipper<Rect>
{
  @override
  Rect getClip(Size size)
  {
    return Rect.fromLTWH(0, 0, 240, 240);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper)
  {
    return false;
  }
}