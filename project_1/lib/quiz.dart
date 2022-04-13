import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, dynamic>> _questions;
  final int _questionIndex;
  final void Function(int) _answerButtonHandler;

  const Quiz({
    Key? key,
    required List<Map<String, dynamic>> questions,
    required int questionIndex,
    required void Function(int) answerButtonHandler,
  })  : _questions = questions,
        _questionIndex = questionIndex,
        _answerButtonHandler = answerButtonHandler,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          question: _questions[_questionIndex]["question"],
        ),
        ...(_questions[_questionIndex]["answers"] as List<Map<String, dynamic>>)
            .map((answer) {
          return Answer(
            onSelect: () => _answerButtonHandler(answer["score"]),
            buttonText: answer["text"],
          );
        }).toList()
      ],
    );
  }
}
