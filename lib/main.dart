import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'what is your favourite colour',
      'answers': [
        {'text': 'blue', 'score': 10},
        {'text': 'green', 'score': 8},
        {'text': 'white', 'score': 5},
        {'text': 'yellow', 'score': 3},
        {'text': 'teal', 'score': 1},
      ]
    },
    {
      'questionText': 'what is your favourite animal',
      'answers': [
        {'text': 'lion', 'score': 10},
        {'text': 'tiger', 'score': 8},
        {'text': 'cheetah', 'score': 5},
        {'text': 'rhino', 'score': 3},
        {'text': 'deer', 'score': 1},
      ]
    },
    {
      'questionText': 'what is your favourite sport',
      'answers': [
        {'text': 'cricket', 'score': 10},
        {'text': 'football', 'score': 8},
        {'text': 'baseball', 'score': 5},
        {'text': 'rugby', 'score': 3},
        {'text': 'basketball', 'score': 1},
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: Center(
          child: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questions: _questions,
                  questionIndex: _questionIndex,
                )
              : Result(_totalScore,_resetQuiz),
        ),
      ),
    );
  }
}
