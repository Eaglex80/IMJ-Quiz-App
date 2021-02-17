import 'package:flutter/material.dart';

import 'Answer.dart';
import 'questions.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function questionButton;

  Quiz(
      {@required this.questions,
      @required this.questionIndex,
      @required this.questionButton});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questions[questionIndex]['questions']),
      ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map((answer) {
        return Answer(()=>questionButton(answer['score']), answer['text']);
      }).toList(),
    ]);
  }
}
