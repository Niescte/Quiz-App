import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
    {
      'questionText': 'What is your favourite color ?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What is your favourite animal ?',
      'answers': ['Giraffe', 'Cow', 'Hen', 'Hippopotamus'],
    },
    {
      'questionText': 'What is your favourite fruit ?',
      'answers': ['Mango', 'Coconut', 'Pineapple', 'Pomergranate'],
    },
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
            title: Text("Quiz App "),
          ),
          body: Column(
            children: [
              Question(questions[questionIndex]['questionText']),
              ...(questions[questionIndex]['answers'] as List<String>)
                  .map((answer) {
                return Answer(answerQuestion, answer);
              }).toList()
            ],
          )),
    );
  }
}


/*class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
  
      ),
    );
  }
}
*/
