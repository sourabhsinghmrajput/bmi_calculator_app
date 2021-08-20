import 'package:flutter/material.dart';

class Mycard extends StatelessWidget {
  final Color colour;
  Mycard({required this.colour});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 170.0,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}

//Color(0xFF1D1E33),