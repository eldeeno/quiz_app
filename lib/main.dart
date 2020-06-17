import 'package:flutter/material.dart';
// widgets import
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State {
  int _questionIndex = 0;
  int _totScore = 0;
  final _questions = const [
    {
      'questiontext': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Blue', 'score': 3},
        {'text': 'Green', 'score': 2}
      ]
    },
    {
      'questiontext': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Dog', 'score': 10},
        {'text': 'Cat', 'score': 2},
        {'text': 'Horse', 'score': 4},
        {'text': 'Camel', 'score': 6}
      ]
    },
    {
      'questiontext': 'What\'s your favorite car brand?',
      'answers': [
        {'text': 'Mercedes', 'score': 10},
        {'text': 'BMW', 'score': 8},
        {'text': 'Toyota', 'score': 3},
        {'text': 'Bentley', 'score': 5}
      ]
    },
  ];
  void _answerQuestion(int score) {
    _totScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _resetQuiz() {
    setState(() {
    _questionIndex = 0;
    _totScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My quiz App'),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 10.0),
          child: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totScore, _resetQuiz),
        ),
      ),
    );
  }
}
