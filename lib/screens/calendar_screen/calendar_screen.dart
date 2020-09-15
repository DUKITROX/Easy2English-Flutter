import 'package:Easy2English/screens/calendar_screen/calendar.dart';
import 'package:Easy2English/styles.dart';
import 'package:Easy2English/widgets/custom_appbar.dart';
import 'package:Easy2English/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar_Screen extends StatefulWidget {
  @override
  _Calendar_ScreenState createState() => _Calendar_ScreenState();
}

class _Calendar_ScreenState extends State<Calendar_Screen> {

  CalendarController _calendarController = CalendarController();
  
  @override
  void dispose() {
    _calendarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Custom_AppBar(
        text: "Calendario",
      ),
      endDrawer: Custom_Drawer(
        name: "Eustaqio",
        level: "PR 5",
        schedule: "asdadasda",
        teacher: "Dunkito",
        current_screen: "Calendar_Screen",
      ),
      body: Center(
        child: Container(
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  TableCalendar(
                    calendarController: _calendarController,
                    locale: "es_Es",
                    availableCalendarFormats: {
                      CalendarFormat.month:"MES"
                    },
                    startDay: DateTime.utc(2020, DateTime.september),
                    endDay: DateTime.utc(2021, DateTime.july),
                    headerStyle: HeaderStyle(
                      centerHeaderTitle: true,
                      titleTextStyle: Calendar_White_TextStyle,
                      titleTextBuilder: (date, locale) {
                        List months = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"];
                        String current_month = months[date.month-1];
                        String current_year = date.year.toString();
                        return "$current_month $current_year";
                      },
                      leftChevronIcon: Icon(Icons.chevron_left, size:30, color:Colors.white),
                      leftChevronMargin: EdgeInsets.all(0),
                      leftChevronPadding: EdgeInsets.all(7),
                      rightChevronIcon: Icon(Icons.chevron_right, size:30, color:Colors.white),
                      rightChevronMargin: EdgeInsets.all(0),
                      rightChevronPadding: EdgeInsets.all(7),  
                    ),
                    startingDayOfWeek: StartingDayOfWeek.monday,
                    daysOfWeekStyle: DaysOfWeekStyle(
                      weekdayStyle: Libel_Suit_Big_White_TextStyle,
                      weekendStyle: Libel_Suit_Big_White_TextStyle,
                    ),
                    
                    calendarStyle: CalendarStyle(
                      outsideDaysVisible: false,
                      highlightToday: false,
                      weekdayStyle: Libel_Suit_Small_White_TextStyle,
                      weekendStyle: Libel_Suit_Small_Grey_TextStyle,
                      unavailableStyle: Libel_Suit_Small_Grey_TextStyle,
                    ),
                    builders: CalendarBuilders(
                      selectedDayBuilder: (context, date, events){
                        return Container(
                          margin: EdgeInsets.all(7),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: blue_color
                          ),
                          child:Text(date.day.toString(), style: Libel_Suit_Small_White_TextStyle,)
                        );
                      }
                    ),
                  ),
                ],
              ),
              
                  DraggableScrollableSheet(
                    minChildSize: (MediaQuery.of(context).size.height-AppBar().preferredSize.height-MediaQuery.of(context).padding.top-392)/(MediaQuery.of(context).size.height-AppBar().preferredSize.height-MediaQuery.of(context).padding.top),
                    initialChildSize: 392/(MediaQuery.of(context).size.height-AppBar().preferredSize.height-MediaQuery.of(context).padding.top),
                    maxChildSize: 0.8,
                  builder:(context, controller){
                     return SingleChildScrollView(
                       controller: controller,
                      child: Positioned(
                        top:392,
                        child: Container(
                          height: 482,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(37),
                              topRight: Radius.circular(37)
                            )
                          ),
                          child: Column(
                            children: [
                              InkWell(
                                child: Padding(
                                  padding: EdgeInsets.all(12),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 50,
                                        height: 7,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(4),
                                          color:Colors.blueGrey[300]
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: ()=>null,
                              )
                            ],
                          ),
                        ),
                      ),
                    );}
                  )
            ],
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomLeft,
              colors: [
                Color(hex_color("#031927")),
                Colors.grey[600]
              ]
            )
          ),
        ),
      ),  
    );
  }
}