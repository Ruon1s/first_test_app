import 'package:flutter/material.dart';
import 'package:first_test_app/question.dart';
import 'package:first_test_app/answer.dart';

class Quiz extends StatelessWidget {

  final VoidCallback onButtonPress;
  final List<Map<String, Object>> myQuestions;
  final int _questionIndex;

  Quiz(this.onButtonPress, this.myQuestions, this._questionIndex){

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          myQuestions[_questionIndex]['questionText'] as String,
        ),
        ...(myQuestions[_questionIndex]['answers'] as List<String>)
            .map((question) {
          return Answer(onButtonPress, question);
        }).toList(),
      ],
    );
  }
}
