import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  String question;
  Questions(this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          question,
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ));
  }
}
