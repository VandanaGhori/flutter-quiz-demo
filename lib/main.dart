import 'dart:collection';

import 'package:flutter/material.dart';

void main() {
  runApp(MyQuiz());
}

class MyQuiz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyQuizState();
  }
}

class _MyQuizState extends State<MyQuiz> {
  var _questionIndex = 0;
  void _answerMyQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print('Answer is given!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite movie?',
      'What\'s your favourite dress?',
    ];
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Quiz App'),
        ),
        body: Column(
          children: [
            Text(
              questions[_questionIndex],
            ),
            ElevatedButton(
              onPressed: _answerMyQuestion,
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: () => print('Answer 2 is selected.'),
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: () {
                print('Answer 3 is selected.');
              },
              child: Text('Answer 3'),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Ask Me',
          child: Icon(Icons.search),
          onPressed: null,
        ),
      ),
    );
  }
}
