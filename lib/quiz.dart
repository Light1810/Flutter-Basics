import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function pressed;

  Quiz({this.questions, this.questionIndex, this.pressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answerText) {
          return Answer(
            answer: answerText['text'],
            answerPressed: () => pressed(answerText['score']),
            score: answerText['score'],
          );
        }).toList(),

//            Answer(answer: _answerList.elementAt(0), answerPressed: _pressed),
//            Answer(answer: _answerList.elementAt(1), answerPressed: _pressed),
//            Answer(answer: _answerList.elementAt(2), answerPressed: _pressed),
      ],
    );
  }
}
