import 'package:Easy2English/screens/students_screen/yes_no_button.dart';
import 'package:Easy2English/styles.dart';
import 'package:flutter/material.dart';

class Custom_Dialog_Yes_No extends StatelessWidget {

  String text;
  Function onPressed;

  Custom_Dialog_Yes_No({this.onPressed, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white
        ),
        child: Column(
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25)
                ),
                color: blue_color
              ),
              child: Center(
                child: Text(text, style: Libel_Suit_Big_White_TextStyle , textAlign: TextAlign.center,),
              ),
            ),
            Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft:Radius.circular(25),
                  bottomRight:Radius.circular(25)
                )
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Yes_No_Button(
                      text: "Sí",
                      color: grey_color,
                      text_style: Libel_Suit_Small_Blue_TextStyle,
                      onPressed: onPressed
                    ),
                    Yes_No_Button(
                      text:"No",
                      color:blue_color,
                      text_style: Libel_Suit_Small_White_TextStyle,
                      onPressed: ()=>Navigator.pop(context),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}