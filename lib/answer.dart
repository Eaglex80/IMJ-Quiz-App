import 'package:flutter/material.dart';
import 'package:imj_quiz/main.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
            vertical: Val.paddingS, horizontal: Val.paddingL),
        child: RaisedButton(
            color: Colors.white,
            padding: EdgeInsets.all(Val.paddingL),
            child: Text(answerText),
            onPressed: selectHandler));
  }
}
