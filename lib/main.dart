import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

// void main(List<String> args) {
//   runApp(const MyApp());
// }

void main(List<String> args) => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': "What's your favorite color?",
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': "What's your favorite animal?",
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': "Who's your favorite instructor?",
      'answers': ['Petar', 'Petar', 'Petar', 'Petar'],
    },
  ];

  int _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  void _startOver() {
    setState(() {
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: <Widget>[
                  Question(
                    questionText:
                        questions[_questionIndex]['questionText'] as String,
                  ),
                  ...(questions[_questionIndex]['answers'] as List)
                      .map((answer) {
                    return Answer(handler: _answerQuestion, answerText: answer);
                  }).toList(),
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Question(questionText: 'You did it'),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.cyan),
                    ),
                    onPressed: _startOver,
                    child: const Text('Start over'),
                  ),
                ],
              ),
      ),
    );
  }
}
