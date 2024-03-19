import 'dart:math';
import 'package:flutter/material.dart';
final randomizer = Random();
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}
class _DiceRollerState extends State<DiceRoller> {
  var currentdiceroll = 2;
  void rollDice()
  { 
      setState(() {
      currentdiceroll = randomizer.nextInt(6)+1;
      });
  }
  @override
  Widget build(context) {
    return Column ( 
            mainAxisSize: MainAxisSize.min,
            children: [ 
              Image.asset('asset/images/dice-$currentdiceroll.png', width: 200),
              TextButton(
                onPressed: rollDice,
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.only(
                    top: 20
                  ),
                  foregroundColor: Colors.white, textStyle: const TextStyle(fontSize: 28)),
                child: const Text('Roll Dice'),
              )
            ],
        );
  }
}