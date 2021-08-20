import 'package:flutter/material.dart';

class MycircleButton extends StatelessWidget {
  MycircleButton({this.myicon, this.onTAP});
  IconData? myicon;
  void Function()? onTAP;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        height: 56,
        width: 56,
      ),
      onPressed: onTAP,
      child: Icon(
        myicon,
        //color: Color(0xFF4C4F5E),
        color: Colors.white,
        size: 40,
      ),
    );
  }
}
