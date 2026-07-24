import 'package:bmi_calculator/main.dart';
import 'package:bmi_calculator/ui_helper/util.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  var input;
  IntroPage({this.input});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(
        "Intro Page",
        style: mTextStyle24(
          textColor: Colors.white70,
          fontWeight: FontWeight.w700,
        ),
      ),
      backgroundColor: Colors.brown,
    ),
    body: Center(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$input",
              style: mTextStyle24(textColor: Colors.white70),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
              child: Text(
                "Home",
                style: mTextStyle24(),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
