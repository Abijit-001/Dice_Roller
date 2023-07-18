import 'package:flutter/material.dart';

const String s = "Hello flutter!!";

class HelloFlutterTextBox extends StatelessWidget {
  const HelloFlutterTextBox(
    this.outputText, {
    super.key,
  });

  final String outputText;

  @override
  Widget build(BuildContext context) {
    return Text(outputText.toUpperCase(),
        style: const TextStyle(
            color: Colors.white,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic));
  }
}
