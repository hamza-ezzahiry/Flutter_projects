import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          title: Text('Dicee'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
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
  Random r = new Random();
  int leftnum = 1;
  int rightnum = 3;
  void change() {
    setState(() {
      leftnum = 1 + r.nextInt(6);
      rightnum = 1 + r.nextInt(6);
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
                change();
              },
              child: Image.asset('images/dice$leftnum.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                change();
              },
              child: Image.asset('images/dice$rightnum.png'),
            ),
          ),
        ],
      ),
    );
  }
}
