import 'package:flutter/material.dart';

class IconButt extends StatelessWidget {
  IconButt({this.onPressed, this.icon, this.onLongPressed});
  final Function onPressed;
  final IconData icon;
  final Function onLongPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 46.0,
      ),
      child: Icon(icon),
      onPressed: onPressed,
      fillColor: Colors.black54,
      shape: CircleBorder(),
      elevation: 6.0,
      onLongPress: onLongPressed,
    );
  }
}