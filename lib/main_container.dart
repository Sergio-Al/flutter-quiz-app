import 'package:flutter/material.dart';

class MainContainer extends StatelessWidget {
  const MainContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Color.fromARGB(255, 30, 41, 255), Color.fromARGB(255, 53, 235, 255), Colors.white],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Learn Flutter the fun way!',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(198, 0, 0, 0)),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                print('hello flutter');
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black26),
              child: const Text('start quiz'),
            )
          ],
        ),
      ),
    );
  }
}
