import 'package:flutter/material.dart';

class QuestionIndex extends StatelessWidget {
  const QuestionIndex(
      {super.key, required this.questionIndex, required this.questionState});

  final bool questionState;
  final String questionIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: questionState ? Color.fromARGB(255, 161, 255, 168) : Color.fromARGB(255, 249, 144, 149),
      ),
      margin: const EdgeInsets.only(right: 8),
      child: Center(
        child: Text(questionIndex),
      ),
    );
  }
}
