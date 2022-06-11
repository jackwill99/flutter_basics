// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_basic/ButtonWidget.dart';

class LastPage extends StatelessWidget {
  final int score;
  final VoidCallback resetQuestion;
  const LastPage({Key? key, required this.score, required this.resetQuestion})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 10),
            child: Text(
              'This is your Score $score',
              style: const TextStyle(fontSize: 20, color: Colors.red),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: RaisedButton(
              padding: const EdgeInsets.all(15),
              color: Colors.green,
              textColor: Colors.white,
              onPressed: resetQuestion,
              child: const Text('Reset'),
            ),
          ),
          const ButtonWidget(),
        ],
      ),
    );
  }
}
