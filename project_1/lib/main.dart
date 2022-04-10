import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerButtonHandler() {
    print("You've chosen this answer!");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
            Text("Question"),
            ElevatedButton(
              onPressed: answerButtonHandler,
              child: Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text("Answer 2"),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text("Answer 3"),
            ),
          ],
        ),
      ),
    );
  }
}
