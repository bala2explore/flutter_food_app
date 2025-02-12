import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite cartoon?',
      'answers': [
        {'text': 'Ben 10', 'score': 8},
        {'text': 'Chota beem', 'score': 1},
        {'text': 'popoye', 'score': 8},
        {'text': 'Tom & Jerry', 'score': 10},
      ],
    },
    {
      'questionText': 'What\'s your favorite Food?',
      'answers': [
        {'text': 'Idly', 'score': 3},
        {'text': 'Dosai', 'score': 6},
        {'text': 'Poori', 'score': 10},
        {'text': 'Pongal', 'score': 7},
      ],
    },
    {
      'questionText': 'Who\'s your favorite Actor?',
      'answers': [
        {'text': 'Thala', 'score': 6},
        {'text': 'Thalapathi', 'score': 10},
        {'text': 'Thalaivar', 'score': 9},
        {'text': 'Ulaganayagan', 'score': 1},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = const ['Hello'];
    // dummy.add('Max');
    // print(dummy);
    // dummy = [];
    // questions = []; // does not work if questions is a const

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
