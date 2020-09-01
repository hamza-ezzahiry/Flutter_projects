import 'package:flutter/material.dart';

// https://i.redd.it/73ltcd74njp21.jpg

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('I AM !POOR'),
          centerTitle: true,
          backgroundColor: Color(0xFFCD0A0A),
        ),
        body: Center(
          child: Image(
            image: AssetImage('assets/img.jpg'),
          ),
        ),
      ),
    ),
  );
}
