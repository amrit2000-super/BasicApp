import 'package:flutter/material.dart';
import 'package:second_app/score.dart';

class Result extends StatelessWidget {
  int _totalscore;
  Function resetQuiz;
  String resulttext = '';
  Result(this.resetQuiz, this._totalscore);
  String get resultscore {
    resulttext = 'You are done with game';
    if (_totalscore <= 10) {
      resulttext = 'you are average';
    } else if (_totalscore <= 20 && _totalscore > 10) {
      resulttext = 'you are good';
    } else if (_totalscore <= 30 && _totalscore > 20) {
      resulttext = 'you are awesome';
    } else {
      resulttext = 'you are toogood';
    }
    return resulttext;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Score(_totalscore),
          Text(
            resultscore,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
          RaisedButton(
            child: Text('REstart Quiz'),
            onPressed: (() => resetQuiz()),
          ),
        ],
      ),
    );
  }
}
