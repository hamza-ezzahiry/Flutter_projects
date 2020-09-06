import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blueGrey,
          body: SafeArea(
            child: Row(
              children: <Widget>[
                Container(
                  color: Colors.white,
                  child: Center(child: Text('Container 1')),
                  height: 100,
                  width: 100,
                ),
                Container(
                  color: Colors.blue,
                  child: Center(child: Text('Container 2')),
                  height: 100,
                  width: 100,
                ),
                Container(
                  color: Colors.yellowAccent,
                  child: Center(child: Text('Container 3')),
                  height: 100,
                  width: 100,
                ),
              ],
            ),
          ),
        ));
  }
}
