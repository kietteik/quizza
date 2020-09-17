import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function buttonClicked;
  final int questionIndex;
  final List questions;

  Quiz(
      {@required this.questions,
      @required this.questionIndex,
      @required this.buttonClicked});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answerText'] as List).map((answer) {
          return Answer(() => buttonClicked(answer['score']), answer['text']);
        })
      ],
    );
  }
}
