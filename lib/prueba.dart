import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Prueba extends StatefulWidget {
  @override
  _PruebaState createState() => _PruebaState();
}

class _PruebaState extends State<Prueba> {

  CalendarController _calendarController = CalendarController();

  @override
  void dispose() {
    _calendarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TableCalendar(
            calendarController: _calendarController,
          ),
          Expanded(
                      child: Container(
              child: DraggableScrollableSheet(
                expand: false,
                minChildSize: 0.5,
                builder: (context, controller){
                  return SingleChildScrollView(
                    controller: controller,
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 200,
                          color: Colors.red,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 200,
                          color: Colors.blueGrey,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 200,
                          color: Colors.black,
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}