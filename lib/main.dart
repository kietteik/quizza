import 'package:flutter/material.dart';
import 'package:quiz/answer.dart';
import './question.dart';

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
      'answerText': ['Cat', 'Dog', 'Lion', 'Elephant']
    },
    {
      'questionText': "Quat\'s your favorite peple?",
      'answerText': ['Me', 'Myself', 'I', 'No one']
    },
    {
      'questionText': "Third question: ",
      'answerText': ['1', '2', '3', '4']
    },
    {
      'questionText': "What;s next",
      'answerText': ['4', '5', '6', '7']
    },
  ];

  var questionIndex = 0;

  void buttonClicked() {
    setState(() {
      questionIndex =
          questionIndex == questions.length - 1 ? 0 : questionIndex + 1;
    });
    print("button clicked");
    print("quesion index is: " + questionIndex.toString());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("Quizaaa"),
      ),
      body: Column(
        children: [
          Question(questions[questionIndex]['questionText']),
          ...(questions[questionIndex]['answerText'] as List<String>)
              .map((answer) {
            return Answer(buttonClicked, answer);
          })
        ],
      ),
    ));
  }
}
