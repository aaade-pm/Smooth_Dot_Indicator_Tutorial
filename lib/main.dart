import 'package:flutter/material.dart';
import 'package:fun_dot_indicators/display.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Fun Dot Indicator App',

      //intial route
      home: Display(),
    );
  }
}
