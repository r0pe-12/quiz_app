import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  const Question({required this.questionText, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Text(
        textAlign: TextAlign.center,
        questionText,
        style: const TextStyle(
          fontSize: 28,
        ),
      ),
    );
  }
}
