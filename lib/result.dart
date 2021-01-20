import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resetQuiz;
  final int totalScore;
  Result(this.totalScore,this.resetQuiz);
  String get resultPhrase {
    var resultText = 'You did it';
    if (totalScore <= 8) {
      resultText = 'You are awesome and innocent';
    } else if (totalScore <= 12) {
      resultText = 'You are super awesome';
    } else if (totalScore <= 18) {
      resultText = 'You have achieved max score';
    } else if (totalScore > 20) {
      resultText = 'You  are super awesome';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          new Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.greenAccent,
            ),
          ),
          RaisedButton(child: Text('Retake Quiz'),onPressed: resetQuiz,),
        ],
      ),
    );
  }
}