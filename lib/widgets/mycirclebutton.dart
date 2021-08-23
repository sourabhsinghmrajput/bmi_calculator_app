import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MycircleButton extends StatefulWidget {
  MycircleButton({this.myicon, this.onTAP});
  IconData? myicon;
  void Function()? onTAP;

  @override
  _MycircleButtonState createState() => _MycircleButtonState();
}

class _MycircleButtonState extends State<MycircleButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RawMaterialButton(
        fillColor: Color(0xFF4C4F5E),
        shape: CircleBorder(),
        elevation: 10,
        constraints: BoxConstraints.tightFor(
          height: 56,
          width: 56,
        ),
        onPressed: widget.onTAP,
        child: Icon(
          widget.myicon,
          //color: Color(0xFF4C4F5E),
          color: Colors.white,
          size: 40,
        ),
      ),
    );
  }
}
