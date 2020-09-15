import 'package:Easy2English/screens/calendar_screen/calendar_screen.dart';
import 'package:Easy2English/screens/homwework_screen/homework_screen.dart';
import 'package:Easy2English/screens/students_screen/students_screen.dart';
import 'package:Easy2English/styles.dart';
import 'package:flutter/material.dart';

class Custom_Drawer extends StatelessWidget {

  String name;
  String level;
  String schedule;
  String teacher;
  String current_screen;

  Custom_Drawer({@required this.name, this.level, this.schedule, this.teacher, this.current_screen});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:254,
      child: Drawer(
        child:Container(
          height: MediaQuery.of(context).size.height,
          color: blue_color,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Text(name, overflow: TextOverflow.ellipsis, style:Libel_Suit_Big_White_TextStyle,)
              ),
              Container(
                padding: EdgeInsets.only(left:12),
                child: Text("Nivel: $level", style: Comfortaa_White_TextStyle,)
              ),
              SizedBox(height: 3,),
              Container(
                padding: EdgeInsets.only(left:12),
                child: Text("Horario: $schedule", style: Comfortaa_White_TextStyle)
                ),
              SizedBox(height: 3,),
              Container(
                padding: EdgeInsets.only(left:12),
                child: Text("Profesor: $teacher", style: Comfortaa_White_TextStyle)
              ),
              SizedBox(height: 12,),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical:20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Drawer_Button(
                        on_dark_mode: current_screen=="Calendar_Screen"?true:false,
                        icon: Icons.calendar_today,
                        text: "Calendario",
                        onPressed: current_screen=="Calendar_Screen"?()=>null:()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Calendar_Screen())),
                      ),
                      SizedBox(height: 3,),
                      Drawer_Button(
                        on_dark_mode: current_screen=="Homework_Screen"?true:false,
                        icon: Icons.create,
                        text: "Deberes",
                        onPressed: current_screen=="Homework_Screen"?()=>null:()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Homework_Screen())),
                      ),
                      SizedBox(height: 3,),
                      Drawer_Button(
                        on_dark_mode: false,
                        icon: Icons.library_books,
                        text: "Exámenes",
                        onPressed: ()=>null,
                      ),
                      Divider(
                        color: Color(hex_color("#707070")),
                        height: 12,
                        thickness: 1,
                      ),
                      Drawer_Button(
                        icon: Icons.home,
                        text: "Inicio",
                        onPressed: (){
                          Navigator.pop(context);
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}

class Drawer_Button extends StatelessWidget {

  bool on_dark_mode;
  String text;
  IconData icon;
  Function onPressed;

  Drawer_Button({this.on_dark_mode:false, @required this.text, this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          color: on_dark_mode?blue_color:Colors.white,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical:8),
              child: Icon(icon, size:22, color:on_dark_mode?Colors.white:blue_color),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical:8),
              child: Text(text, style: on_dark_mode?Libel_Suit_Small_White_TextStyle:Libel_Suit_Small_Blue_TextStyle,),
            )
          ],
        ),
      ),
      onTap:onPressed,
    );
  }
}