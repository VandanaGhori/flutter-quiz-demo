import 'package:flutter/material.dart';

void main() {
  runApp(MyQuiz());
}

class MyQuiz extends StatelessWidget {
  void answerMyQuestion() {
    print('Answer is given!');
  }

  @override
  Widget build(BuildContext context) {
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
            ElevatedButton(
              onPressed: answerMyQuestion,
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
