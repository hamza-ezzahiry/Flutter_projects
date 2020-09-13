import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded f({int n, Color c}) {
    return (Expanded(
      child: FlatButton(
        onPressed: () {
          final p = new AudioCache();
          p.play('note$n.wav');
        },
        color: c,
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'الة العزف العجيبة',
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontFamily: 'ArefRuqaa',
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            f(c: Colors.red, n: 1),
            f(c: Colors.orange, n: 2),
            f(c: Colors.yellow, n: 3),
            f(c: Colors.green, n: 4),
            f(c: Colors.teal, n: 5),
            f(c: Colors.blue, n: 6),
            f(c: Colors.purple, n: 7),
          ],
        )),
      ),
    );
  }
}
