import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function clickHandler;
  final String answerText;

  Answer(this.clickHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: double.infinity,
      child: RaisedButton(
        color: Colors.black87,
        textColor: Colors.white,
        child: Text(this.answerText),
        onPressed: clickHandler,
      ),
    );
  }
}
