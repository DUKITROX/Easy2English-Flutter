import 'package:flutter/material.dart';
import 'package:Easy2English/styles.dart';

class Student_Tile extends StatelessWidget {

  String name;
  String level;
  String schedule;
  String teacher;
  Function onPressed;

  Student_Tile({@required this.name, this.level, this.schedule, this.teacher, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: MediaQuery.of(context).size.width-39,
        padding: EdgeInsets.symmetric(horizontal:21, vertical: 12),
        margin: EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          gradient: LinearGradient(
            begin: Alignment.topCenter, 
            end: Alignment.bottomCenter,
            colors:[red_color, Color(hex_color("#7D1409"))]
          ),
          boxShadow: [
            BoxShadow(
              color: shadow_color,
              offset: Offset(7, 7),
              blurRadius: 7.0
            )
          ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal:7, vertical: 5),
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color:light_color,
                borderRadius: BorderRadius.circular(9),
              ),
              child:Text(name, style: Libel_Suit_Big_Blue_TextStyle,overflow: TextOverflow.ellipsis,)
            ),
            Container(
              padding: EdgeInsets.only(left:7),
              child: Text("Nivel: $level", style: Comfortaa_White_TextStyle,)
            ),
            SizedBox(height: 3,),
            Container(
              padding: EdgeInsets.only(left:7),
              child: Text("Horario: $schedule", style: Comfortaa_White_TextStyle)
              ),
            SizedBox(height: 3,),
            Container(
              padding: EdgeInsets.only(left:7),
              child: Text("Profesor: $teacher", style: Comfortaa_White_TextStyle)
            )
          ],
        ),
      ),
      onTap: onPressed,
    );
  }
}