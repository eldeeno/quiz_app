import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefullWidget {
  createState() {
    
  }
}

class MyAppState extends State {
  int questionIndex = 0;
  void answerQuestion() {
    questionIndex = questionIndex + 1;
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
      'What\'s your favorite car brand?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app using vsc'),
        ),
        body: Column(children: [
          Text(questions[questionIndex]),
          RaisedButton(
            onPressed: answerQuestion,
            child: Text('Anser 1'),
          ),
          RaisedButton(
            onPressed: answerQuestion,
            child: Text('Anser 2'),
          ),
          RaisedButton(
            onPressed: answerQuestion,
            child: Text('Anser 3'),
          ),
        ]),
      ),
    );
  }
}
