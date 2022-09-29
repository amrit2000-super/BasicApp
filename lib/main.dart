import 'package:flutter/material.dart';
import 'package:second_app/result.dart';
import './questions.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';
import './score.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _index = 0;
  var _totalscore = 0;
  static const questions = [
    {
      'questiontext': 'What\'s your favourite food?',
      'answers': [
        {'text': 'Onion', 'score': 10},
        {'text': 'Potato', 'score': 20},
        {'text': 'cucumber', 'score': 30}
      ],
    },
    {
      'questiontext': 'What\'s your favourite colour?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 20},
        {'text': 'White', 'score': 30},
        {'text': 'Blue', 'score': 40}
      ],
    }
  ];
  void resetQuiz() {
    setState(() {
      _index = 0;
      _totalscore = 0;
    });
  }

  void answerQuestion(int score) {
    setState(() {
      _index++;
      _totalscore += score;
    });
    print('Answer chosen!');
    if (_index < questions.length) {
      print('We have more questions!');
    } else {
      print('We dont have more questions!');
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My Second App'),
            ),
            body: _index < questions.length
                ? Quiz(answerQuestion, questions, _index, _totalscore)
                : Result(resetQuiz, _totalscore)));
  }
}
