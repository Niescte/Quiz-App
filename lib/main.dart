import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  var questions = [
    'What is your favourite color?',
    'What is your favourite animal ?'
  ];
  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My First App "),
          ),
          body: Column(
            children: [
              Question(questions[questionIndex]),
              ElevatedButton(
                child: Text("Answer 1"),
                onPressed: answerQuestion,
              ),
              ElevatedButton(
                child: Text("Answer 1"),
                onPressed: () => print("Answer 2 is chosen"),
              ),
              ElevatedButton(
                child: Text("Answer 1"),
                onPressed: () => {
                  print("Answer 3 is chosen"),
                  print("Second Line"),
                },
              ),
              ElevatedButton(
                child: Text("Answer 1"),
                onPressed: null,
              ),
            ],
          )),
    );
  }
}


/*class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Text('This is my body'),
      ),
    );
  }
}
*/
