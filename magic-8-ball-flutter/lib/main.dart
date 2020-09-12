import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            backgroundColor: Colors.blue[200],
            appBar: AppBar(
              title: Text('Magic 8 Ball'),
              centerTitle: true,
              backgroundColor: Colors.blue[600],
            ),
            body: MagicBall(),
          )),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int num = 2;
  void change() {
    setState(() {
      num = 1 + Random().nextInt(5);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: <Widget>[
        Expanded(
          child: FlatButton(
            onPressed: () {
              change();
            },
            child: Image.asset('images/ball$num.png'),
          ),
        ),
      ]),
    );
  }
}
