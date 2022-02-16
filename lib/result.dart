import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final void Function()? goHome;
  const Result(this.score, {Key? key, this.goHome}) : super(key: key);

  String get resultPhrase {
    String resultText;
    if (score <= 60) {
      resultText = "You are awesome and inoccent!";
    } else if (score <= 70) {
      resultText = "Pretty Likeable!";
    } else if (score <= 100) {
      resultText = "You are strange!";
    } else {
      resultText = "You are bad!";
    }
    return resultText + "\n" + "Total Score: ${score}";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: GestureDetector(
      child: Container(
        width: double.infinity,
        height: 300,
        margin: const EdgeInsets.all(10),
        child: Text(
          resultPhrase,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color.fromARGB(255, 192, 24, 24),
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      onDoubleTap: goHome,
    ));
  }
}
