import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final Map questionAnswerPair;
  final Function handler;

  const Quiz(
      {super.key, required this.questionAnswerPair, required this.handler});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questionText: questionAnswerPair['questionText'] as String,
        ),
        ...(questionAnswerPair['answers'] as List).map((answer) {
          return Answer(
            handler: () => handler(answer['score'] as int),
            answerText: answer['text'] as String,
          );
        }).toList(),
      ],
    );
  }
}
