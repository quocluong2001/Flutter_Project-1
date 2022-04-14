import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

class AppBody extends StatefulWidget {
  const AppBody({Key? key}) : super(key: key);

  @override
  State<AppBody> createState() => _AppBodyState();
}

class _AppBodyState extends State<AppBody> {
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

    if (_questionIndex < _questions.length) {
      setState(() {
        ++_questionIndex;
      });
    }
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return (_questionIndex < _questions.length)
        ? Quiz(
            questions: _questions,
            questionIndex: _questionIndex,
            answerButtonHandler: _answerButtonHandler,
          )
        : Result(
            totalScore: _totalScore,
            onReset: _resetQuiz,
          );
  }
}
