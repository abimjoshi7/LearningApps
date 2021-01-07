import 'package:flutter/material.dart';
import 'package:quizz/quizBank.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(MyApp());
}

QuizBank quizB = QuizBank();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('QuizApp'),
          backgroundColor: Colors.black,
        ),
        body: QuizPage(),
        backgroundColor: Colors.white38,
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];


  void checkAnswer(bool userAnswer) {
    bool correctAnswer = quizB.getAnswer();
    if(quizB.isFinished() == true){
      Alert(
        context: context,
        title: 'Finished!',
        desc: 'You\'ve reached the end of the quiz.',
      ).show();

      quizB.reset();

      scoreKeeper = [];
    }else{
      if (userAnswer == correctAnswer) {
        scoreKeeper.add(
          Icon(Icons.check, color: Colors.green,),
        );
      } else {
        scoreKeeper.add(
          Icon(Icons.close, color: Colors.red,),
        );
      }
      quizB.nextQuestion();
    }

  }


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              child: Center(child: Text(quizB.getQuestion(), style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white60), )),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: RaisedButton(
            onPressed: () {
              setState(() {
                checkAnswer(true);
              });
            },
            child: Text('True'),
            color: Colors.green,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: RaisedButton(
            onPressed: () {
              setState(() {
                checkAnswer(false);
              });
            },
            child: Text('False'),
            color: Colors.red,
          ),
        ),
        SafeArea(
          child: Row(children: scoreKeeper),
        )
      ],
    );
  }
}
