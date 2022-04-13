import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _question;

  const Question({required String question, Key? key})
      : _question = question,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(
        top: 10,
        bottom: 10,
      ),
      child: Text(
        _question,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 28,
        ),
      ),
    );
  }
}
