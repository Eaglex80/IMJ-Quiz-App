import 'package:flutter/material.dart';

import 'main.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.all(Val.paddingL),
        margin: EdgeInsets.all(Val.paddingL),
        color: Colors.white,
        child: Text(
          questionText,
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
        ));
  }
}
