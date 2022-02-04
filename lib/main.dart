import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Dice'),
        ),
        body: dice(),
      ),
    ),
  );
}

class dice extends StatefulWidget {
  const dice({Key? key}) : super(key: key);

  @override
  _diceState createState() => _diceState();
}

class _diceState extends State<dice> {
  int leftdiceno = 1;
  int rightdiceno = 6;
  void both() {
    setState(() {
      leftdiceno = Random().nextInt(6) + 1;
      rightdiceno = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                both();
              },
              child: Image.asset('images/dice$leftdiceno.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                both();
              },
              child: Image.asset('images/dice$rightdiceno.png'),
            ),
          ),
        ],
      ),
    );
  }
}
