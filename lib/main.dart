import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF09136d),
        appBar: AppBar(
          title: Center(
            child: Text(
              'Dicee',
              style: TextStyle(color: Colors.white),
            ),
          ),
          elevation: 7.0,
          backgroundColor: Color(0xFF0d3ebf),
          shadowColor: Colors.black38,
          actions: [],
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 1;
  int RightDice = 1;
  void dice(){
    RightDice = Random().nextInt(6) + 1;
    leftDice = Random().nextInt(6) + 1;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          //Padding(padding: 10.0),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  dice();
                  print('Left Dice clicked $leftDice');
                });

              },
              child: Image.asset('images/dice$leftDice.png'),
            ),
          ),

          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  dice();
                  print('Right Dice clicked $RightDice');
                });

              },
              child: Image.asset('images/dice$RightDice.png'),
            ),
          ),
        ],
      ),
    );
  }
}

