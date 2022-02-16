import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Map<String, Object> answerText;
  final void Function(int) pressFunc;
  const Answer(this.answerText, {Key? key, required this.pressFunc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              const Color.fromARGB(255, 29, 163, 168)),
          textStyle: MaterialStateProperty.all(
              const TextStyle(color: Color.fromARGB(255, 61, 2, 226))),
        ),
        child: Text(answerText['text'].toString()),
        onPressed: () => pressFunc(answerText['score'] as int),
      ),
    );
  }
}
