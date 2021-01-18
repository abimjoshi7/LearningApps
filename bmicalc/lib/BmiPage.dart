import 'dart:ui';
import 'package:bmicalc/FirstScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmicalc/ReusableCard.dart';
import 'IconContent.dart';
import 'constants.dart';
import 'iconButt.dart';
import 'calculatorBrain.dart';

enum GenderRole { male, female }

class BmiPage extends StatefulWidget {
  @override
  _BmiPageState createState() => _BmiPageState();
}

class _BmiPageState extends State<BmiPage> {
  GenderRole genders;
  int height1 = 180;
  int age = 20;
  int weight1 = 75;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      onPress: () {
                        setState(() {
                          genders = GenderRole.male;
                        });
                      },
                      cardChild: ReusableCardContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'Male',
                      ),
                      colour: genders == GenderRole.male
                          ? kOnTapColor
                          : kActiveColor),
                ),
                Expanded(
                  child: ReusableCard(
                      onPress: () {
                        setState(() {
                          genders = GenderRole.female;
                        });
                      },
                      cardChild: ReusableCardContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'Female',
                      ),
                      colour: genders == GenderRole.female
                          ? kOnTapColor
                          : kActiveColor),
                ),
              ],
            )),
            Expanded(
              child: ReusableCard(
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Height',
                        style: kFSize,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height1.toString(),
                            style: kNumberSize,
                          ),
                          Text('cm'),
                        ],
                      ),
                      Slider(
                          value: height1.toDouble(),
                          min: 100.0,
                          max: 300.0,
                          onChanged: (double newHeight) {
                            setState(() {
                              height1 = newHeight.round();
                            });
                          }),
                    ],
                  ),
                  colour: kActiveColor),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Age",
                            style: kFSize,
                          ),
                          Text(
                            age.toString(),
                            style: kNumberSize,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButt(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              IconButt(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },

                                // icon: FontAwesomeIcons.minus,
                              ),
                            ],
                          ),
                        ],
                      ),
                      colour: kActiveColor),
                ),
                Expanded(
                  child: ReusableCard(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Weight", style: kFSize),
                          Text(
                            weight1.toString(),
                            style: kNumberSize,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButt(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    weight1--;
                                  });
                                },
                                onLongPressed: () {
                                  setState(() {
                                    weight1 = weight1 - 50;
                                  });
                                },

                                // icon: FontAwesomeIcons.minus,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              IconButt(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    weight1++;
                                  });
                                },
                                onLongPressed: () {
                                  setState(() {
                                    weight1 = weight1 + 50;
                                  });
                                },

                                // icon: FontAwesomeIcons.minus,
                              ),
                            ],
                          ),
                        ],
                      ),
                      colour: kActiveColor),
                )
              ],
            )),
            GestureDetector(
              onTap: () {
                Calculate calc12 = Calculate(height: height1, weight: weight1);

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FirstScreen(
                              bmires1: calc12.bmicalc(),
                              bmires2: calc12.resultText(),
                              bmires3: calc12.opinionText(),
                            )));
              },
              child: Container(
                child: Center(
                    child: Text(
                  'CALCULATE',
                  style: kFSize,
                )),
                width: double.infinity,
                height: kBottomContainerHeight,
                color: kBottomContainerColor,
              ),
            )
          ],
        )
        //   floatingActionButton: Theme(data: ThemeData(accentColor: Color(0xFFFFEBAC) ),child: FloatingActionButton(onPressed: (){}, child: Icon(Icons.add),)),
        );
  }
}
