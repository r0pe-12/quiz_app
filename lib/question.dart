import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  const Question({required this.questionText, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      questionText,
    );
  }
}
