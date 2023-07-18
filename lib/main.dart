import 'package:flutter/material.dart';

import 'gradient_container.dart';

void main() {
  runApp(
      MaterialApp(
      home: Scaffold(
        body: GradientContainer(startColor: Colors.lightBlueAccent,midColor: Colors.lightBlue, Colors.blue),
        // body: GradientContainer.Default(),
      ),
    ),
  );
}



