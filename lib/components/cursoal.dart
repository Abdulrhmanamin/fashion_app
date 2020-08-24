import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

Widget imageCarousel(){
  return Container(
    height: 180.0,
    child: Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/c1.jpg'),
        AssetImage('images/m1.jpeg'),
        AssetImage('images/w1.jpeg'),
        AssetImage('images/w3.jpeg'),
        AssetImage('images/w4.jpeg'),
      ],
      animationCurve: Curves.fastOutSlowIn,
      autoplay: true,
      animationDuration: Duration(milliseconds: 1000),
      dotSize: 4.0,
      indicatorBgPadding: 2.0,
      dotBgColor: Colors.transparent,
    ),
  );
}