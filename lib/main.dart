import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        body: DicePage(),
        appBar: AppBar(
          title: Text('Dice..'),
          backgroundColor: Colors.blue,
        ),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  //declare variable
  var leftDiceNumber  = 1;
  var rightDiceNumber = 1;

  static void int; generateNumber (int) {
    return Random().nextInt(int) + 1;
  }

  void changeDiceFace (){
    setState(() {
      leftDiceNumber  = generateNumber(6);
      rightDiceNumber = generateNumber(6);
    });
  }
 

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDiceFace();
                print('Left Button Pressed');
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDiceFace();
                print('Right Button Pressed..');
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
  



}


