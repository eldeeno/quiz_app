import 'package:flutter/material.dart';
// widgets import
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State {
  int _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      {
        'questiontext': 'What\'s your favorite color?',
        'answers': ['Black', 'Red', 'Blue', 'Green']
      },
      {
        'questiontext':  'What\'s your favorite animal?',
        'answers': ['Dog', 'Cat', 'Horse', 'Camel']
      },
      {
        'questiontext': 'What\'s your favorite car brand?',
        'answers': ['Mercedes', 'BMW', 'Toyota', 'Bema']
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My quiz App'),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 10.0),
          child: Column(children: [
            Question(_questions[_questionIndex]['questiontext']),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ]),
        ),
      ),
    );
  }
}
