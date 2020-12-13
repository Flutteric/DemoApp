import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        color: Colors.lightBlue,
        child: Text('Answer 1'),
        onPressed: null,
      ),
    );
  }
}
