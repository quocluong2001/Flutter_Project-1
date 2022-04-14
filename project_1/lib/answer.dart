import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String buttonText;
  final VoidCallback selectHandler;

  const Answer({this.buttonText = "", required VoidCallback onSelect, Key? key})
      : selectHandler = onSelect,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.cyan,
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            side: const BorderSide(
              color: Colors.blue,
              width: 2,
            )),
        onPressed: selectHandler,
        child: Text(
          buttonText,
        ),
      ),
    );
  }
}
