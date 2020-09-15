import 'package:Easy2English/styles.dart';
import 'package:flutter/material.dart';

class Homework_Tile extends StatelessWidget {

  String text;
  DateTime time_stamp;

  Homework_Tile({@required this.text, this.time_stamp});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(14),
        padding: EdgeInsets.all(14),
        decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          border: Border.all(
            color: blue_color,
            width: 1
          )
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(text, style: Comfortaa_Regular_Small_TextSyle, textAlign: TextAlign.left,),
                Spacer()
              ],
            ),
            Divider(
              color: Color(hex_color("#707070")),
              height: 12,
              thickness: 1,
            ),
            Row(
              children: [
                Spacer(),
                Text(
                  "Mandado el ${time_stamp.day.toString()}-${time_stamp.month.toString()}-${time_stamp.year.toDouble()}",
                  style: Comfortaa_Regular_Small_TextSyle,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}