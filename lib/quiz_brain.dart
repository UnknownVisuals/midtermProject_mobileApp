import 'package:midtermproject_mobileapp/question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
      questionText: 'Nama saya adalah Reynaldhi Tryana Graha',
      questionAnswer: true,
    ),
    Question(
      questionText: 'NIM saya adalah 1101213117',
      questionAnswer: true,
    ),
    Question(
      questionText: 'Saya sudah lulus Mata Kuliah Mobile Application.',
      questionAnswer: false,
    ),
  ];

  void nextQuestion(){
    if(_questionNumber < _questionBank.length - 1){
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer(){
    return _questionBank[_questionNumber].questionAnswer;
  }
}
