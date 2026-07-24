import 'package:flutter/material.dart';

TextStyle montenegrinFont() {
  return TextStyle(fontFamily: "Montenegrin");
}

TextStyle mTextStyle16({
  Color textColor = Colors.black,
  FontWeight fontWeight = FontWeight.normal,
}) {
  return TextStyle(
    fontSize: 16,
    color: textColor,
    fontWeight: fontWeight,
  );
}

TextStyle mTextStyle24({
  Color textColor = Colors.black,
  FontWeight fontWeight = FontWeight.normal,
}) {
  return TextStyle(
    fontSize: 24,
    color: textColor,
    fontWeight: fontWeight,
  );
}
