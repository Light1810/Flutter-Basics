import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'What\'s your favorite place?',
      'answers': [
        {'text': 'Home ', 'score': 1},
        {'text': 'College', 'score': 1},
        {'text': 'Office', 'score': 1},
        {'text': 'School', 'score': 1},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore=0;

  void _pressed(int score) {
    _totalScore+=score;
    setState(() {
      if (_questionIndex < _questions.length) {
        _questionIndex += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
//    List<String> _answerList=questions[_questionIndex]['answers'];;

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            title: Text('Demo App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  questionIndex: _questionIndex,
                  pressed: _pressed,
                )
              : Result(_totalScore)),
    );
  }
}
