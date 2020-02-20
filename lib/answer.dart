import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final Function answerPressed;
  final int score;

  Answer({this.answer, this.answerPressed,this.score});

  @override
  Widget build(BuildContext context) {
    final _showSnack = () => Scaffold.of(context).showSnackBar(SnackBar(
          content: Text(score.toString()),
          duration: Duration(milliseconds: 500),
        ));

    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        color: Colors.blueGrey,
        child: Text(answer),
        onPressed: () {
          _showSnack();
          answerPressed();
        },
      ),
    );
  }
}
