import 'package:flutter/material.dart';
import 'package:top_seven_assignment12/HomePage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'HomePage',
    routes: {
      'HomePage': (context) => HomePage(),
    },
  ));
}