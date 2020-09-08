import 'package:Easy2English/screens/calendar_screen/calendar_screen.dart';
import 'package:Easy2English/screens/sign_in_screen/sign_in_screen.dart';
import 'package:Easy2English/screens/sign_up_screen/sign_up_screen.dart';
import 'package:Easy2English/screens/students_screen/students_screen.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:flutter/material.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calendar_Screen()
    );
  }
}