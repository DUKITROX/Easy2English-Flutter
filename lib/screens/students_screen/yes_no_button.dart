import 'package:Easy2English/styles.dart';
import 'package:flutter/material.dart';

class Yes_No_Button extends StatelessWidget {

  String text;
  Color color;
  TextStyle text_style;
  double width;
  Function onPressed;

  Yes_No_Button({this.width:115, @required this.text, this.text_style, this.color, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: width,
        height: 35,
        child: Center(child: 
          Text(text, style: text_style)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: color,
          boxShadow: [
            BoxShadow(
              color: shadow_color,
              offset: Offset(5,5),
              blurRadius: 4.0
            )
          ]
        ),
      ),
      onTap: onPressed,
    );
  }
}