import 'question.dart';

class QuizEngine {
  List<Question> _questionList = [
    new Question('Hispania was a Roman Empire province.',true),
    new Question('A spider is an insect.',false),
    new Question('The closest star to Earth is the Sun.',true)
  ];

  String getQuestionText(int questionNumber) {
    return _questionList[questionNumber].questionText;
  }

  bool getQuestionAnswer(int questionAnswer) {
    return _questionList[questionAnswer].questionAnswer;
  }
}