import 'package:flutter/material.dart';

class SetColors
{
  static const headingText = Colors.teal;
  static var subHeadingText = Colors.teal[200];
  static const normal = Colors.white ;
}

class TextStyles {

  TextStyle headingText(Color color) {
    return TextStyle(
        color: color,
        fontSize:18.0,
    );
  }

  TextStyle subHeadingText(Color color)
  {
    return TextStyle(
        color: color,
        fontSize: 12
    );
  }

}
var styles = TextStyles();