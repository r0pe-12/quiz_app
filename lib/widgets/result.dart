import 'package:flutter/material.dart';

import 'question.dart';

class Result extends StatelessWidget {
  final VoidCallback startOver;
  const Result({super.key, required this.startOver});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Question(questionText: 'You did it'),
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.cyan),
          ),
          onPressed: startOver,
          child: const Text('Start over'),
        ),
      ],
    );
  }
}
