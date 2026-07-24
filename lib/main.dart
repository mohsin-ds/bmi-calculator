import 'package:bmi_calculator/splash_screen.dart';
import 'package:bmi_calculator/widgets/rounded_btn.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/ui_helper/util.dart';
import 'package:bmi_calculator/widgets/text_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color.fromARGB(194, 255, 140, 64),
        textTheme: TextTheme(
          headlineLarge: TextStyle(fontSize: 24, fontFamily: 'Montenegrin'),
          headlineMedium: TextStyle(fontSize: 15),
        ),
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHomePage> {
  final TextEditingController weightInput = TextEditingController();
  final TextEditingController heightFeetInput = TextEditingController();
  final TextEditingController heightInchInput = TextEditingController();
  String result = "";

  @override
  void dispose() {
    weightInput.dispose();
    heightFeetInput.dispose();
    heightInchInput.dispose();
    super.dispose();
  }

  void calculateBMI() {
    double? weight = double.tryParse(weightInput.text);
    double? feet = double.tryParse(heightFeetInput.text);
    double? inch = double.tryParse(heightInchInput.text);

    if (weight == null || feet == null || inch == null) {
      setState(() {
        result = "Please enter valid numbers.";
      });
      return;
    }
    if (weight <= 0 || feet < 0 || inch < 0) {
      setState(() {
        result = "Values cannot be negative.";
      });
      return;
    }

    double totalInches = (feet * 12) + inch;

    if (totalInches <= 0) {
      setState(() {
        result = "Height must be greater than zero.";
      });
      return;
    }

    double heightInMeters = totalInches * 0.0254;
    double bmi = weight / (heightInMeters * heightInMeters);

    String category;

    if (bmi < 18.5) {
      category = "Underweight";
    } else if (bmi < 25) {
      category = "Normal Weight";
    } else if (bmi < 30) {
      category = "Overweight";
    } else {
      category = "Obese";
    }

    setState(() {
      result = "Your BMI is ${bmi.toStringAsFixed(2)}\n\nCategory: $category";
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(
        "BMI",
        style: mTextStyle24(
          fontWeight: FontWeight.w700,
          textColor: Colors.white,
        ),
      ),
      backgroundColor: Colors.brown,
    ),
    backgroundColor: Colors.brown.shade100,
    body: SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(height: 30),
          TextField(
            controller: weightInput,
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            decoration: inputDecoration("Enter Weight (Kg)"),
          ),
          SizedBox(height: 30),
          TextField(
            controller: heightFeetInput,
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            decoration: inputDecoration("Enter Height (Feet)"),
          ),
          SizedBox(height: 30),
          TextField(
            controller: heightInchInput,
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            decoration: inputDecoration("Enter Height (Inches)"),
          ),
          SizedBox(height: 30),
          RoundedButton(
            btnName: "Calculate BMI",
            bgColor: Colors.brown,
            textStyle: mTextStyle24(
              textColor: Colors.white,
              fontWeight: FontWeight.w700,
            ),
            callback: calculateBMI,
          ),
          SizedBox(height: 30),
          Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(20),
            ),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              child: Text(
                result.isEmpty ? "Your BMI will appear here." : result,
                textAlign: TextAlign.center,
                style: mTextStyle24(
                  textColor: Colors.blue,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
