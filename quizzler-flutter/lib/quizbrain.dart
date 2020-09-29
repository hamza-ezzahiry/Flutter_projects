import 'questions.dart';

class QuizBrain {
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
  String getQuestion(int nb_question) {
    return (_listOfQuestions[nb_question].questiontext);
  }

  bool getAnswer(int nb_question) {
    return (_listOfQuestions[nb_question].answer);
  }
}
