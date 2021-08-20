import 'package:bmi/Screens/inputpage.dart';
import 'package:flutter/material.dart';

import 'constants.dart';
import 'mycard.dart';
import 'mycirclebutton.dart';

class myBottomCard extends StatefulWidget {
  void Function()? onTAPP;
  int mycval;
  var mybcardtitle;

  myBottomCard({required this.mybcardtitle, required this.mycval, this.onTAPP});

  @override
  _myBottomCardState createState() => _myBottomCardState();
}

class _myBottomCardState extends State<myBottomCard> {
  @override
  Widget build(BuildContext context) {
    return Mycard(
      colour: kActiveCardColour,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.mybcardtitle,
            style: kLableTextStyle,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            int.mycval.toString(),
            style: kLableNumberTextStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: MycircleButton(
                  myicon: Icons.remove,
                  //onTAP: onTAPP,
                ),
              ),
              Expanded(
                child: MycircleButton(
                  myicon: Icons.add,
                  //onTAP: onTAPP,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
