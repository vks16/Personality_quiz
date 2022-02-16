import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _questionText;
  const Question(this._questionText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        _questionText,
        style: const TextStyle(
          color: Color.fromRGBO(244, 3, 0, 1),
          fontSize: 26,
        ),
        textAlign: TextAlign.center,
      ),
      width: double.infinity,
      margin: const EdgeInsets.all(10),
    );
  }
}
