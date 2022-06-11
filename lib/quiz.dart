import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_basic/answer.dart';
import 'package:flutter_basic/question.dart';

class Quiz extends StatelessWidget {
  final Function(int) answerQuestion;
  final List<Map<String, Object>> questions;
  final int questionIndex;
  const Quiz(
      {Key? key,
      required this.answerQuestion,
      required this.questions,
      required this.questionIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          question: questions[questionIndex]['questionText'] as String,
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((question) {
          return Answer(
            question: question['text'] as String,
            selectHandler: () => answerQuestion(question['score'] as int),
            /*
            selectHandler: answerQuestion,
            u can use two options of selectHandler value as nameless function or reference point of function
             */
            score: question['score'] as int,
          );
        }).toList()
      ],
    );
  }
}
