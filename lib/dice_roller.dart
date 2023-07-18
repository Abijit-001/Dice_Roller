import 'dart:math';

import 'package:flutter/material.dart ';


final Random random=Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var i=6;

  void rollDice() {
    setState(() {
      i =random.nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$i.png',
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              padding: EdgeInsets.only(top: 20.0),
              foregroundColor: Colors.white,
              textStyle:
              TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold)),
          child: Text('Roll Dice'),
        )
      ],
    );
  }
}
