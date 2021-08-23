import 'package:bmi/widgets/mycirclebutton.dart';

import 'package:flutter/material.dart';
import 'package:bmi/widgets/mycard.dart';
import 'package:bmi/widgets/constants.dart';

enum GenderType { male, female }

int height = 180;
int weight = 45;
int age = 22;
GenderType? selectedgender;

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    void addweight() {
      setState(() {
        weight++;
      });
    }

    void reduceweight() {
      setState(() {
        weight--;
      });
    }

    void addage() {
      setState(() {
        age++;
      });
    }

    void reduceage() {
      setState(() {
        age--;
      });
    }

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 40,
              width: double.infinity,
              child: Center(
                child: Text(
                  'BMI CALCULATOR',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.4,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedgender = GenderType.male;
                          print("male tapped");
                        });
                      },
                      child: Mycard(
                        colour: (selectedgender == GenderType.male
                            ? kActiveCardColour
                            : kInactiveCardColour),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              color: (selectedgender == GenderType.male
                                  ? Colors.blue
                                  : Colors.white),
                              size: 100,
                            ),
                            SizedBox(height: 10),
                            Text(
                              'MALE',
                              style: kLableTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedgender = GenderType.female;
                          print("female tapped");
                        });
                      },
                      child: Mycard(
                        colour: (selectedgender == GenderType.female
                            ? kActiveCardColour
                            : kInactiveCardColour),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              color: (selectedgender == GenderType.female
                                  ? Colors.pink
                                  : Colors.white),
                              size: 100,
                            ),
                            SizedBox(height: 10),
                            Text(
                              'FEMALE',
                              style: kLableTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Mycard(
                    colour: kInactiveCardColour,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "HEIGHT",
                          style: kLableTextStyle,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: kLableNumberTextStyle,
                            ),
                            SizedBox(width: 3),
                            Text(
                              "CM",
                              style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                          ],
                        ),
                        Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 220.0,
                          activeColor: kBottomContainerColour,
                          inactiveColor: Colors.white24,
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          },
                        ),
                      ],
                    ),
                  )),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Mycard(
                      colour: kInactiveCardColour,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: Text(
                              'WEIGHT',
                              style: kLableTextStyle,
                            ),
                          ),
                          Text(
                            '$weight',
                            style: kLableNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MycircleButton(
                                myicon: Icons.remove,
                                onTAP: reduceweight,
                              ),
                              MycircleButton(
                                myicon: Icons.add,
                                onTAP: addweight,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Mycard(
                      colour: kInactiveCardColour,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              'AGE',
                              style: kLableTextStyle,
                            ),
                          ),
                          Text(
                            '$age',
                            style: kLableNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MycircleButton(
                                myicon: Icons.remove,
                                onTAP: reduceage,
                              ),
                              MycircleButton(
                                myicon: Icons.add,
                                onTAP: addage,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: kContainerHeight,
                width: double.infinity,
                child: Center(
                  child: Text(
                    "CALCULATE",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5,
                      fontSize: 28,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: kBottomContainerColour,
                  //color: Color(0xFFE83D66),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
