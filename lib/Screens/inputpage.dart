import 'package:bmi/widgets/mybottomcard.dart';
import 'package:bmi/widgets/mycirclebutton.dart';
import 'package:flutter/material.dart';
import 'package:bmi/widgets/mycard.dart';
import 'package:bmi/widgets/constants.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum GenderType { male, female }

int height = 180;
int weight = 45;
int age = 22;

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    GenderType? selectedgender;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "BMI Calculator",
            style: TextStyle(
              letterSpacing: 0.2,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedgender = GenderType.male;
                        });
                      },
                      child: Mycard(
                        colour: selectedgender == GenderType.male
                            ? kActiveCardColour
                            : kInactiveCardColour,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              color: Colors.white,
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
                      });
                    },
                    child: Mycard(
                      colour: selectedgender == GenderType.female
                          ? kActiveCardColour
                          : kInactiveCardColour,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female,
                            color: Colors.white,
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
                  )),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Mycard(
                    colour: kActiveCardColour,
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
                    child: myBottomCard(
                      mybcardtitle: "WEIGHT",
                      mycval: weight,
                    ),
                  ),
                  Expanded(
                    child: myBottomCard(
                      mybcardtitle: 'AGE',
                      mycval: age,
                    ),
                  ),
                ],
              ),
            ),
            Container(
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
          ],
        ),
      ),
    );
  }
}
