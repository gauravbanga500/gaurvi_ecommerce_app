import 'package:flutter/material.dart';

class FavoriteClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var mPath = Path();

   // mPath.moveTo(size.width*0.7, 0);
   // mPath.lineTo(size.width*0.8, size.height*0.5);

    mPath.close();
    return mPath;

  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    throw UnimplementedError();
  }
  
}