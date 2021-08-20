import 'package:flutter/material.dart';
import 'package:bmi/widgets/mycard.dart';
import 'package:bmi/widgets/constants.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
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
                    child: Mycard(
                      colour: kActiveCardColour,
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
                            style: TextStyle(
                                color: Colors.white70,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      child: Mycard(
                    colour: kActiveCardColour,
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
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
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
                      colour: kActiveCardColour,
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
                      colour: kActiveCardColour,
                    ),
                  ),
                  Expanded(
                    child: Mycard(
                      colour: kActiveCardColour,
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
