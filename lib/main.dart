import 'package:flutter/material.dart';
import 'package:midtermproject_mobileapp/question.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
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
  List<Icon> scoreKeeper = [];

  List<Question> questionBank = [
    Question(
      questionText: 'Nama saya adalah Reynaldhi Tryana Graha',
      questionAnswer: true,
    ),
    Question(
      questionText: 'NIM saya adalah 1101213117',
      questionAnswer: true,
    ),
    Question(
      questionText: 'Saya sedang mengambil Mata Kuliah Mobile Application.',
      questionAnswer: true,
    ),
  ];

  int questionNumber = 0;

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
                questionBank[questionNumber].questionText,
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
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
              child: Text(
                'True',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                //The user picked true.
                bool correctAnswer =
                    questionBank[questionNumber].questionAnswer;

                if (correctAnswer == true) {
                  print("User got it right");
                } else {
                  print("User got it wrong");
                }

                setState(() {
                  questionNumber++;
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                //The user picked false.
                bool correctAnswer =
                    questionBank[questionNumber].questionAnswer;

                if (correctAnswer == false) {
                  print("User got it right");
                } else {
                  print("User got it wrong");
                }

                setState(() {
                  questionNumber++;
                });
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}

/*
question1: 'Nama saya adalah Reynaldhi Tryana Graha', true,
question2: 'NIM saya adalah 1101213117', true,
question3: 'Saya sedang mengambil Mata Kuliah Mobile Application.', true,
*/