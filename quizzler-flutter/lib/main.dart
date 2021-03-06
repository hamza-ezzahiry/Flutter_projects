import 'package:flutter/material.dart';
import 'quizbrain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizBrain qb = QuizBrain();
void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> iconats = [];
  int correctAns = 0;
  void Check_ans(bool x) {
    if (iconats.length == 4) {
      Alert(
        context: context,
        title: "Kmlti!",
        desc: "Your score is $correctAns / 4",
      ).show();
      iconats.clear();
      correctAns = 0;
    } else {
      if (x == qb.getAnswer()) {
        correctAns++;
        iconats.add(Icon(
          Icons.check,
          color: Colors.green,
        ));
      } else
        iconats.add(Icon(
          Icons.close,
          color: Colors.red,
        ));

      qb.nextQuestion();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                qb.getQuestion(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                setState(() {
                  Check_ans(true);
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
                color: Colors.red,
                child: Text(
                  'False',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    Check_ans(false);
                  });
                }),
          ),
        ),
        Row(
          children: iconats,
        )
      ],
    );
  }
}

/*
question1: 'Only character or integer can be used in switch statement', false,
question2: '#define is known as preprocessor compiler directive.', true,
question3: 'Algorithm is the graphical representation of logic. ', false,
question4: 'sizeof( ) is a function that returns the size of a variable.' , false,
*/
