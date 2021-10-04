import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenum = 1;
  int rightdicenum = 6;
  Random random = new Random();
  void generate1() {
    setState(() {
      leftdicenum = random.nextInt(6) + 1;
      rightdicenum = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(width: 15),
        Expanded(
          child: TextButton(
            onPressed: generate1,
            child: Image(
              image: AssetImage('images/dice$leftdicenum.png'),
            ),
          ),
        ),
        SizedBox(width: 15),
        Expanded(
          child: TextButton(
            onPressed: generate1,
            child: Image(
              image: AssetImage('images/dice$rightdicenum.png'),
            ),
          ),
        ),
        SizedBox(width: 15),
      ],
    );
  }
}
