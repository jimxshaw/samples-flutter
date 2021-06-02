import 'question.dart';

class QuizEngine {
  int _questionNumber = 0;

  List<Question> _questionList = [
    new Question('Hispania was a Roman Empire province.',true),
    new Question('A spider is an insect.',false),
    new Question('The closest star to Earth is the Sun.',true)
  ];

  void nextQuestion() {
    if (_questionNumber < _questionList.length) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionList[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionList[_questionNumber].questionAnswer;
  }
}