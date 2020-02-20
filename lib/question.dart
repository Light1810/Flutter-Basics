import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _questionText;

  Question(this._questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Text(
          _questionText,
          style: TextStyle(fontSize: 26),
          textAlign: TextAlign.center,
        ));
  }
}
