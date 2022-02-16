import 'package:flutter/material.dart';

import 'package:flutter_course/quiz.dart';
import 'package:flutter_course/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _score = 0;

  void _selectSecondQuestion(int myScore) {
    _score += myScore;
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = const [
      {
        'questionText': "What's your favourite color?",
        "options": [
          {"text": "Red", "score": 10},
          {"text": "Green", "score": 5},
          {"text": "Blue", "score": 2},
          {"text": "Grey", "score": 0},
          {"text": "Yellow", "score": 7}
        ]
      },
      {
        'questionText': "What's your favourite animal?",
        "options": [
          {"text": "Dog", "score": 10},
          {"text": "Cat", "score": 5},
          {"text": "Parrat", "score": 2},
          {"text": "Snake", "score": 0},
          {"text": "Mouse", "score": 7}
        ]
      },
      {
        'questionText': "What's your favourite Tv Show?",
        "options": [
          {"text": "Superman And Lois", "score": 10},
          {"text": "Chocolate", "score": 5},
          {"text": "Life", "score": 2},
        ]
      },
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Quiz App"),
      ),
      body: _questionIndex < questions.length
          ? Quiz(
              questions: questions,
              questionIndex: _questionIndex,
              answerButtonPressed: _selectSecondQuestion)
          : Result(
              _score,
              goHome: () {
                setState(() {
                  _questionIndex = 0;
                });
              },
            ),
      backgroundColor: const Color.fromARGB(255, 215, 215, 223),
    ));
  }
}
