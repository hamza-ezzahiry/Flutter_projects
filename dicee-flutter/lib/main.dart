import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.redAccent,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                print('hello');
              },
              child: Image.asset('images/dice1.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                print('hello 2');
              },
              child: Image.asset('images/dice4.png'),
            ),
          ),
        ],
      ),
    );
  }
}
