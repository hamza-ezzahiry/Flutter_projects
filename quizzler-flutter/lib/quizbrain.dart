import 'questions.dart';

class QuizBrain {
  int _nb_question = 0;

  List<Question> _listOfQuestions = [
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
  String getQuestion() {
    return (_listOfQuestions[_nb_question].questiontext);
  }

  bool getAnswer() {
    return (_listOfQuestions[_nb_question].answer);
  }

  void nextQuestion() {
    if (_nb_question < _listOfQuestions.length - 1) _nb_question++;
  }

  int getNbOfQuestion() {
    return (_listOfQuestions.length);
  }
}
