import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:advanced_basics/questions_summary/question_index.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return InkWell(
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      QuestionIndex(
                        questionIndex:
                            ((data['question_index'] as int) + 1).toString(),
                        questionState:
                            data['user_answer'] == data['correct_answer'],
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              data['question'] as String,
                              textAlign: TextAlign.left,
                              style: GoogleFonts.hind(
                                  color: Colors.white, fontSize: 16, height: 1),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: 'User answer: ',
                                  style: const TextStyle(color: Colors.white),
                                  children: [
                                    TextSpan(
                                      text: data['user_answer'] as String,
                                      style: TextStyle(
                                          color: Colors.blue.shade100),
                                    )
                                  ]),
                            ),
                            RichText(
                              text: TextSpan(
                                  text: 'Answer: ',
                                  style: const TextStyle(color: Colors.white),
                                  children: [
                                    TextSpan(
                                        text: data['correct_answer'] as String,
                                        style: TextStyle(
                                          color: Colors.green.shade100,
                                        )),
                                  ]),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
