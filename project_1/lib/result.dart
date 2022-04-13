import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _totalScore;

  const Result({Key? key, required int totalScore})
      : _totalScore = totalScore,
        super(key: key);

  String get resultText {
    if (_totalScore <= 8) {
      return "You're awesome!";
    } else if (_totalScore <= 12) {
      return "Pretty likeable";
    } else if (_totalScore <= 16) {
      return "Hmm...strange!";
    }
    return "You're kinda bad!";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultText,
        style: const TextStyle(
          fontSize: 38,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
