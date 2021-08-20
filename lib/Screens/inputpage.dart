import 'package:flutter/material.dart';
import 'package:bmi/widgets/mycard.dart';

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
          title: Text("BMI Calculator"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Mycard(
                    colour: Color(0xFF1D1E33),
                  )),
                  Expanded(
                      child: Mycard(
                    colour: Color(0xFF1D1E33),
                  )),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Mycard(
                    colour: Color(0xFF1D1E33),
                  )),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Mycard(
                    colour: Color(0xFF1D1E33),
                  )),
                  Expanded(
                      child: Mycard(
                    colour: Color(0xFF1D1E33),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
