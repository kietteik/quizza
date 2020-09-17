import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final totalScore;

  Result(this.totalScore);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "YOUR SCORE IS: " + totalScore.toString(),
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
