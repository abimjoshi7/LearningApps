import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void play(int a) {
    final player = AudioCache();
    player.play('note$a.wav');
  }

  Expanded def({Color color, int x}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          return play(x);
        },

      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Xylophone'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            def(color: Colors.green, x: 1),
            def(color: Colors.blue, x: 2),
            def(color: Colors.orange, x: 3),
            def(color: Colors.red, x: 4),
            def(color: Colors.teal, x: 5),
            def(color: Colors.purple, x: 6),
            def(color: Colors.pink, x: 7),
          ],
        ),
      ),
    );
  }
}
