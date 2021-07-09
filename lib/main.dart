import 'package:flutter/material.dart';
import 'package:font_slider/slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.black, primarySwatch: Colors.teal),
      home: SliderApp(),
    );
  }
}
