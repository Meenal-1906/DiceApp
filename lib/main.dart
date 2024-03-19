import 'package:flutter/material.dart';
import 'package:second_app/gradient_container.dart';
void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(Color.fromARGB(255, 72, 30, 145), Color.fromARGB(255, 43, 9, 103)),
    ),
  ),
  );
}

