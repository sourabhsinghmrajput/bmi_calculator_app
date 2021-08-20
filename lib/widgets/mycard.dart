

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Mycard extends StatelessWidget {
  Mycard({required this.colour, this.child, this.onpressed});

  final Color colour;
  Widget? child;
 final void Function()? onpressed;
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        height: 200.0,
        width: 170.0,
        margin: EdgeInsets.all(13.0),
        child: child,
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

//Color(0xFF1D1E33),