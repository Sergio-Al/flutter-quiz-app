import 'package:flutter/material.dart';

import 'package:advanced_basics/answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity, // as much width as you can...
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Question...',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton('Answer text 1', () {}),
          AnswerButton('Answer text 2', () {}),
          AnswerButton('Answer text 3', () {}),
        ],
      ),
    );
  }
}
