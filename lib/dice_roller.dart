import 'dart:math';
import 'package:flutter/material.dart';

class DiceRollerr extends StatefulWidget {
  const DiceRollerr({super.key});

  @override
  State<DiceRollerr> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRollerr> {
  var activeDiceImage = 'assets/images/dice-1.png';

  void rollDice() {
    setState(() {
      var randomNumber = Random().nextInt(6) + 1;
      activeDiceImage = 'assets/images/dice-$randomNumber.png';
      print("dice rolled");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          activeDiceImage,
          width: 250,
        ),
        const SizedBox(
          height: 30,
        ),
        TextButton(
            onPressed: rollDice,
            child: const Text(
              "Roll Dice",
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.amberAccent),
            ))
      ],
    );
  }
}
