import 'package:flutter/material.dart';
import 'package:flutter_course/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final void Function(int) answerButtonPressed;
  const Quiz(
      {required this.questions,
      required this.questionIndex,
      Key? key,
      required this.answerButtonPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Question(questions[questionIndex]['questionText'] as String),
          ...(questions[questionIndex]['options'] as List<Map<String, Object>>)
              .map(
                (e) => Answer(
                  e,
                  pressFunc: answerButtonPressed,
                ),
              )
              .toList(),
        ],
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min);
  }
}
