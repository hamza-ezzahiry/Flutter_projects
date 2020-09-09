import 'package:flutter/material.dart';
import 'package:mi_card/my_flutter_app_icons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('assets/me.jpg'),
                ),
                Text(
                  'حمزة الزاهري',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      fontFamily: 'ArefRuqaa',
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'مطور تطبيقات و العاب',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.teal[50],
                      fontFamily: 'GreatVibes',
                      fontWeight: FontWeight.bold),
                ),
                Container(
                    color: Colors.white10,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.mail,
                          color: Colors.black,
                          size: 30,
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        Text(
                          'hamza.ezzahiry@gmail.com',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Gabriela',
                          ),
                        )
                      ],
                    )),
                Container(
                    color: Colors.white10,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          MyFlutterApp.github,
                          color: Colors.black,
                          size: 30,
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        Text(
                          'hamza-ezzahiry',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Gabriela',
                          ),
                        )
                      ],
                    )),
                Container(
                    color: Colors.white10,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          MyFlutterApp.linkedin_rect,
                          color: Colors.black,
                          size: 30,
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        Text(
                          '/in/hezzahir',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Gabriela',
                          ),
                        )
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
