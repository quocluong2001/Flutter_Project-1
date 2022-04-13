import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const <Map<String, dynamic>>[
    {
      "question": "What's your favorite color?",
      "answers": [
        {
          "text": "Red",
          "score": 10,
        },
        {
          "text": "Green",
          "score": 5,
        },
        {
          "text": "Blue",
          "score": 3,
        },
        {
          "text": "Yellow",
          "score": 1,
        },
      ],
    },
    {
      "question": "What's your favorite animal?",
      "answers": [
        {
          "text": "Lion",
          "score": 10,
        },
        {
          "text": "Elephant",
          "score": 5,
        },
        {
          "text": "Dog",
          "score": 3,
        },
        {
          "text": "Cat",
          "score": 1,
        },
      ],
    },
    {
      "question": "What's your favorite instructor?",
      "answers": [
        {
          "text": "Max",
          "score": 10,
        },
        {
          "text": "Max",
          "score": 5,
        },
        {
          "text": "Max",
          "score": 3,
        },
        {
          "text": "Max",
          "score": 1,
        },
      ],
    },
  ];
  int _questionIndex = 0;
  int _totalScore = 0;

  void _answerButtonHandler(int score) {
    _totalScore += score;

    print(_totalScore);

    if (_questionIndex < _questions.length) {
      setState(() {
        ++_questionIndex;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My First App"),
        ),
        body: (_questionIndex < _questions.length)
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerButtonHandler: _answerButtonHandler,
              )
            : Result(
                totalScore: _totalScore,
              ),
      ),
    );
  }
}
