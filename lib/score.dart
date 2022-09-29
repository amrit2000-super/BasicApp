import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  var _currscore;
  Score(this._currscore);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Score:$_currscore',
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.end,
    );
  }
}
