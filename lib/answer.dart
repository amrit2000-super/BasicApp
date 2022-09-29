import 'package:flutter/material.dart';
import './main.dart';
import './quiz.dart';

class Answer extends StatelessWidget {
  Function selectAns;
  String anstext;
  Answer(this.selectAns, this.anstext);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(anstext),
        onPressed: () => selectAns(),
      ),
    );
  }
}
