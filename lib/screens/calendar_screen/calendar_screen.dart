import 'package:Easy2English/screens/calendar_screen/calendar.dart';
import 'package:Easy2English/styles.dart';
import 'package:Easy2English/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class Calendar_Screen extends StatefulWidget {
  @override
  _Calendar_ScreenState createState() => _Calendar_ScreenState();
}

class _Calendar_ScreenState extends State<Calendar_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Custom_AppBar(
        text: "asdf",
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Calendar(

              )
            ],
          ),
          margin: EdgeInsets.only(bottom: 0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(hex_color("#031927")),
                Color(hex_color("#BA1200"))
              ]
            )
          ),
        ),
      ),  
    );
  }
}