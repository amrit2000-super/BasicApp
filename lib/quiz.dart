import 'package:flutter/material.dart';
import './main.dart';
import './questions.dart';
import './answer.dart';
import './score.dart';

class Quiz extends StatelessWidget {
  List<Map<String, Object>> questions;
  Function answerQuestion;
  int _index;
  int _totalscore;
  Quiz(this.answerQuestion, this.questions, this._index, this._totalscore);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Score(_totalscore),
        Questions(questions[_index]['questiontext'] as String),
        ...(questions[_index]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestion(answer['score']), answer['text'] as String);
        }).toList(),
      ],
    );
  }
}
