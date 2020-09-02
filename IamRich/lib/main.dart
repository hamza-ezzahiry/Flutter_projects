import 'package:flutter/material.dart';

// https://i.redd.it/73ltcd74njp21.jpg

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('I AM !POOR'),
          centerTitle: true,
          backgroundColor: Color(0xFFCD0A0A),
        ),
        body: Center(
          child: Image(
            image: AssetImage('assets/diamond.png'),
          ),
        ),
      ),
    ),
  );
}
/* Tesla App */
/*
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Tesla'),
          centerTitle: true,
          backgroundColor: Color(0xFFCD0A0A),
        ),
        body: Center(
          child: Image(
            image:
            NetworkImage(
                'https://www.carlogos.org/car-logos/tesla-logo-2200x2800-show.png'),
          ),
        ),
      ),
    ),
  );
}
*/
