import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Mycard extends StatelessWidget {
  Mycard({
    required this.colour,
    this.child,
  });

  final Color colour;
  Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 170.0,
      margin: EdgeInsets.all(11.0),
      child: child,
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}

//Color(0xFF1D1E33),