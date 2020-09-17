import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final totalScore;
  final Function restart;
  Result(this.totalScore, this.restart);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "YOUR SCORE IS: " + totalScore.toString(),
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          FlatButton(onPressed: restart, child: Text("Reset Game!")),
          RaisedButton(
            child: Text("Reset Game"),
            onPressed: restart,
          )
        ],
      ),
    );
  }
}
