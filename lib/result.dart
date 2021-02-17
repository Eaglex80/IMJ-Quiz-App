import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You Did It !';
    if (resultScore <= 8) {
      resultText = 'you are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Good!';
    } else if (resultScore <= 16) {
      resultText = 'You are Strange!';
    } else {
      resultText = 'So Bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(resultPhrase,
              style: TextStyle(
                  fontSize: 50,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          RaisedButton(
              color: Colors.blue,
              child: Text('Restart'),
              onPressed: resetHandler)
        ],
      ),
    );
  }
}
