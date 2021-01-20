import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: double.infinity,
      child: RaisedButton(
        color: Colors.teal,
        textColor: Colors.white,
        child: Text(
          answerText
        ),
        onPressed: selectHandler,
      ),
    );
  }
}