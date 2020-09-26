import 'package:flutter/material.dart';
import 'questions.dart';

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

int i = 0;

class _QuizPageState extends State<QuizPage> {
  List<Icon> iconats = [];
  List<Question> ListOfQuestions = [
    Question(
        q: 'Only character or integer can be used in switch statement',
        a: false),
    Question(
        q: '#define is known as preprocessor compiler directive.', a: true),
    Question(
        q: 'Algorithm is the graphical representation of logic.', a: false),
    Question(
        q: 'sizeof( ) is a function that returns the size of a variable.',
        a: false),
  ];
  void check_ans(bool x) {
    if (x == ListOfQuestions[i].answer)
      iconats.add(Icon(
        Icons.check,
        color: Colors.green,
      ));
    else
      iconats.add(Icon(
        Icons.close,
        color: Colors.red,
      ));
    i++;
    if (i == 4) i = 0;
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
                ListOfQuestions[i].questiontext,
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
                  check_ans(true);
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
                    check_ans(false);
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
