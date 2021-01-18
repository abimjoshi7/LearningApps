import 'package:bmicalc/ReusableCard.dart';
import 'package:bmicalc/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  FirstScreen({this.bmires1,this.bmires2,this.bmires3});
  final String bmires1;
  final String bmires2;
  final String bmires3;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Results')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 10),
            child: Text(
          'Your Result',
          style: kFSize,
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Text(bmires1, style: kResultNumberSize,),
                  ),
                  Container(
                    child: Text(bmires2, style: kResultFSize,),
                  ),
                  Container(
                    child: Text(bmires3, style: kResultFSize,),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Center(
                  child: Text(
                    'Try Again',
                    style: kFSize,
                  )),
              width: double.infinity,
              height: kBottomContainerHeight,
              color: kBottomContainerColor,
            ),
          )
        ],
      ),
    );
  }
}
