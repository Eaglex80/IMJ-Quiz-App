import 'package:flutter/material.dart';
import 'package:imj_quiz/quiz.dart';

import 'result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Val.title,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          canvasColor: Colors.grey[200]),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState((){
        _questionIndex = 0;
        _totalScore = 0;
    });
  }

  static const _questions = const [
    {
      'questions': 'What is your name?',
      'answers': [
        {'text': 'Ram', 'score': 10},
        {'text': 'Sham', 'score': 5},
        {'text': 'Raj', 'score': 2},
        {'text': 'man', 'score': 7}
      ]
    },
    {
      'questions': 'What is my name?',
      'answers': [
        {'text': 'Ram', 'score': 10},
        {'text': 'Sham', 'score': 5},
        {'text': 'Raj', 'score': 2},
        {'text': 'man', 'score': 7}
      ]
    }
  ];

  void _questionButton(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
      if (_questionIndex < _questions.length) {}
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Val.title),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              questions: _questions,
              questionIndex: _questionIndex,
              questionButton: _questionButton,
            )
          : Result(_totalScore,_resetQuiz),
    );
  }
}

class Val {
  //Title
  static const String title = 'IMJ Quiz';

  //Padding
  static const double paddingS = 3;
  static const double paddingM = 6;
  static const double paddingL = 12;
}
