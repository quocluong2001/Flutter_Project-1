import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _totalScore;
  final VoidCallback? _onResetButtonHandler;

  const Result({Key? key, required int totalScore, VoidCallback? onReset})
      : _totalScore = totalScore,
        _onResetButtonHandler = onReset,
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            resultText,
            style: const TextStyle(
              fontSize: 38,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: const BorderSide(
                color: Colors.blue,
                width: 2,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: _onResetButtonHandler,
            child: const Text(
              "Restart!",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}
