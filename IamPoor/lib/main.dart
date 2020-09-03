import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.orange[100],
        appBar: AppBar(
          title: Text('I am Poor'),
          backgroundColor: Colors.orange,
          centerTitle: true,
        ),
        body: Center(child: Image(image: AssetImage('assets/bermuda.png'))),
      ),
    );
  }
}
