import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final Map questionAnswerPair;
  final VoidCallback handler;

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
            handler: handler,
            answerText: answer,
          );
        }).toList(),
      ],
    );
  }
}
