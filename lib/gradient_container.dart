import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'dice_roller.dart';
import 'hello_flutter_text_box.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
   GradientContainer(
    this.endColor, {
    required this.startColor,
    required this.midColor,
    super.key,
  });

   GradientContainer.Default({super.key})
      : startColor = Colors.white,
        midColor = Colors.white70,
        endColor = Colors.grey;

  final Color startColor, midColor, endColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: startAlignment,
            end: endAlignment,
            colors: [startColor, midColor, endColor]),
      ),
      child: Center(
        child: DiceRoller()
      ),
    );
  }
}
