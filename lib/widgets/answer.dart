import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback handler;
  final String answerText;

  const Answer({required this.handler, super.key, required this.answerText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        style: ButtonStyle(
          // backgroundColor: MaterialStateProperty.all(Colors.blue),
          elevation: MaterialStateProperty.all(1),
        ),
        onPressed: handler,
        child: Text(answerText),
      ),
    );
  }
}
