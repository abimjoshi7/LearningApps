import 'package:flutter/material.dart';
import 'BmiPage.dart';


void main() {
  runApp(Bmi());
}

class Bmi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BmiPage(),
      theme: ThemeData(
        sliderTheme: SliderTheme.of(context).copyWith(
            overlayColor: Colors.black54,
            thumbColor: Colors.black,
            activeTrackColor: Colors.black,
            inactiveTrackColor: Colors.black54,
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 18.0),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 27.0)),
        primaryColor: Color(0xFFFFEBAC),
        scaffoldBackgroundColor: Color(0xFFFEF8E0),
      ),
    );
  }
}
