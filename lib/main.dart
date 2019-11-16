import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[300],
        appBar: AppBar(
          backgroundColor: Colors.blue[200],
          title: Center(child: Text('Dicee')),
        ),
        body: MyApp(),
      ),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  int leftDiceNum = 1;
  int rightDiceNum = 1;

  void randomNum(){
    setState(() {
     rightDiceNum = Random().nextInt(6) + 1;
     leftDiceNum = Random().nextInt(6) + 1;
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
                randomNum();
                print('left dice number = $leftDiceNum');
              },
              child: Image.asset('images/dice $leftDiceNum.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                randomNum();
              },
              child: Image.asset('images/dice $rightDiceNum.png'),
            ),
          ),
        ],
      ),
    );
  }
}
