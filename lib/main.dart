import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['blue', 'green', 'yellow', 'red']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['cat', 'dog', 'horse', 'rat']
    },
    {
      'questionText': 'What\'s your favorite movie?',
      'answers': [
        'Kill bill',
        'The Prestige',
        'Dark Knight',
        'Pursuit of Happiness'
      ]
    }
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('QUIZ APP'),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(
                    questions[_questionIndex]['questionText'],
                  ),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(answer, _answerQuestion);
                  }).toList()
                ],
              )
            : Center(
                child: Text('You did it'),
              ),
      ),
    );
  }
}
