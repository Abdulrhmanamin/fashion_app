import 'package:flutter/material.dart';
import 'package:fashion_app/screens/login.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red.shade900,
      ),
      home: Login(),
  ));
}

