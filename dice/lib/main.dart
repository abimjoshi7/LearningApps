import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int left = 1;
  int right = 1;
  void set(){
    setState(() {
      left = Random().nextInt(6) + 1;
      right = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.,
        appBar: AppBar(
          title: Text('Dice'),
        ),
        body: Row(
          children: [
            Expanded(
              child: FlatButton(
                onPressed: () {
                  set();

                },
                child: Image.asset('images/${left}.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  set();
                },
                child: Image.asset('images/${right}.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
