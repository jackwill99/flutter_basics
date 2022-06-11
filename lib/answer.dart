// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // final Function(int) selectHandler;
  final VoidCallback selectHandler;
  final String question;
  final int score;
  const Answer({
    Key? key,
    required this.selectHandler,
    required this.score,
    required this.question,
  }) : super(key: key);

  void clicked() {
    // selectHandler(score);
    selectHandler();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: double.infinity,
      child: RaisedButton(
        padding: const EdgeInsets.all(20),
        onPressed: clicked,
        color: Colors.blue,
        textColor: Colors.black,
        child: Text('$question -> Score $score'),
      ),
    );
  }
}
