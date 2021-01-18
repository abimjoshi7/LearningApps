import 'package:flutter/material.dart';
import 'constants.dart';


class ReusableCardContent extends StatelessWidget {
ReusableCardContent({this.icon, this.label});

final IconData icon;
final String label;

@override
Widget build(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        icon,
        size: kIconSize,
      ),
      SizedBox(height: 15.9,),
      Text(
        label,
        style: kFSize),

    ],
  );
}
}
