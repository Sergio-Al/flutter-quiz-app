import 'package:flutter/material.dart';

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
          const Text('Question...'),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              print('dev');
            },
            child: const Text('Answer 1'),
          ),
          ElevatedButton(
            onPressed: () {
              print('dev');
            },
            child: const Text('Answer 2'),
          ),
          ElevatedButton(
            onPressed: () {
              print('dev');
            },
            child: const Text('Answer 3'),
          ),
        ],
      ),
    );
  }
}
