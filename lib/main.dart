import 'package:first_test_app/question.dart';
import 'package:first_test_app/quiz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:first_test_app/answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
    throw UnimplementedError();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final _myQuestions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'what\'s your favorite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'what\'s your favorite drink?',
      'answers': ['cola', 'water'],
    },
    {
      'questionText': 'what\'s your favorite movie?',
      'answers': ['Braveheart'],
    },
  ];

  void _answerQuestion() {
    if (_questionIndex < _myQuestions.length)
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    print('answer chosen');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mun appi'),
          centerTitle: true,
        ),
        body: _questionIndex < _myQuestions.length
            ?
            Quiz( _answerQuestion, _myQuestions, _questionIndex)
            : Center(
                child: Text('no questions left'),
              ),
      ),
    );
    throw UnimplementedError();
  }
}
