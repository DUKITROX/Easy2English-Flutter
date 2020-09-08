import 'package:Easy2English/styles.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {

  CalendarController _calendarController = CalendarController();

  @override
  void initState() {
    super.initState();
    CalendarController _calendarController = CalendarController();
  }

  @override
  void dispose() {
    _calendarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      calendarController: _calendarController,
      locale: "es_ES",
      startingDayOfWeek: StartingDayOfWeek.monday,
      calendarStyle: CalendarStyle(
        todayColor: grey_color,
        selectedColor: blue_color
      ),
      
      headerStyle: HeaderStyle(
       titleTextStyle: Libel_Suit_Big_Blue_TextStyle,
       formatButtonVisible: false,

      ),
    );
  }
}