import 'package:flutter/material.dart';
import 'package:flutter_basic/lastPage.dart';
import 'package:flutter_basic/quiz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questions = [
    {
      "questionText": 'What\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 3},
        {'text': 'Red', 'score': 4},
        {'text': 'Green', 'score': 1},
        {'text': 'Blue', 'score': 7}
      ]
    },
    {
      "questionText": 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Cat', 'score': 10},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 10}
      ]
    },
    {
      "questionText": 'What\'s your favourite instructor?',
      'answers': [
        {'text': 'NetNinja', 'score': 6},
        {'text': 'Samsung', 'score': 4},
        {'text': 'DevEd', 'score': 6},
        {'text': 'Python', 'score': 7}
      ]
    },
  ];
  int questionIndex = 0;

  int scores = 0;

  /// this is for answerQuestion
  void answerQuestion(int x) {
    setState(() {
      if (questionIndex < questions.length) {
        questionIndex += 1;
      } else {
        questionIndex = 0;
      }
    });
    scores += x;
  }

  /// reset the questions
  void resetQuestion() {
    setState(() {
      questionIndex = 0;
      scores = 0;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Basic',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Basic"),
        ),
        body: questionIndex < questions.length
            ? Quiz(
                answerQuestion: answerQuestion,
                questions: questions,
                questionIndex: questionIndex)
            : LastPage(score: scores, resetQuestion: resetQuestion),
      ),
    );
  }
}
