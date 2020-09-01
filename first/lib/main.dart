import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hadi hia awal app ta3i'),
        ),
        body: Center(
          child: Text('Hamza Ezzahiry'),
        ),
      ),
    );
  }
}
