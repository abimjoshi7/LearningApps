import 'dart:math';


class Calculate {
  Calculate({this.height, this.weight});
  final int height;
  final int weight;
  double _result;

  String bmicalc() {
    _result = weight / pow(height / 100, 2);
    return _result.toStringAsFixed(1);
  }

  String resultText() {
    if (_result >= 25) {
      return 'overweight';
    } else if (_result > 18.5) {
      return 'normal';
    } else {
      return 'underweight';
    }
  }

  String opinionText() {
    if (_result >= 18) {
      return 'Go on Diet.';
    } else if (_result > 15) {
      return 'Good Work';
    } else {
      return 'Eat more. WTH?';
    }
  }
}
