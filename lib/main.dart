import 'package:flutter/material.dart';
import 'result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questions = [
    {
      'questionText': "Quat\'s your favourite animal?",
      'answerText': [
        {'text': 'Cat', 'score': 1},
        {'text': 'Dog', 'score': 1},
        {'text': 'Lion', 'score': 1},
        {'text': 'Elephanr', 'score': 4},
      ]
    },
    {
      'questionText': "Quat\'s your favorite peple?",
      'answerText': [
        {'text': 'Me', 'score': 1},
        {'text': 'Myself', 'score': 1},
        {'text': 'I', 'score': 1},
        {'text': 'Elephant', 'score': 4},
      ]
    },
    {
      'questionText': "Third question: ",
      'answerText': [
        {'text': '1', 'score': 1},
        {'text': '2', 'score': 1},
        {'text': '3', 'score': 1},
        {'text': '4', 'score': 4},
      ]
    },
    {
      'questionText': "What;s next",
      'answerText': [
        {'text': '4', 'score': 1},
        {'text': '5', 'score': 1},
        {'text': '6', 'score': 1},
        {'text': '7', 'score': 4},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _buttonClicked(int score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
      _totalScore += score;
    });
    print("button clicked");
    print("quesion index is: " + _questionIndex.toString());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black87,
              title: Text("Quizaaa"),
            ),
            body: _questionIndex < questions.length
                ? Quiz(
                    buttonClicked: _buttonClicked,
                    questionIndex: _questionIndex,
                    questions: questions,
                  )
                : Result(_totalScore)));
  }
}
