import 'package:Easy2English/screens/students_screen/yes_no_button.dart';
import 'package:Easy2English/styles.dart';
import 'package:Easy2English/widgets/auth_entry.dart';
import 'package:flutter/material.dart';

class Custom_Dialog_Register extends StatefulWidget {
  @override
  _Custom_Dialog_RegisterState createState() => _Custom_Dialog_RegisterState();
}

class _Custom_Dialog_RegisterState extends State<Custom_Dialog_Register> {

  TextEditingController student_id_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Container(
          height: 300,
          color: Colors.white,
          child: NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (overscroll) {
              overscroll.disallowGlow();
            },
            child: ListView(
              children: [
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)),
                    color: blue_color
                  ),
                  child: Center(
                    child: Text("Registrar Alumno", style: AppBar_TextStyle,)
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Auth_Entry(
                        spacing: 0,
                        textField: TextField(
                          controller: student_id_controller,
                          style: Entry_TextStyle,
                          decoration: InputDecoration.collapsed(
                            hintText: "ID Alumno",
                            hintStyle: Entry_Hint_TextStyle,
                            border: InputBorder.none
                          ),
                        ),
                      ),
                      Auth_Entry(
                        spacing: 0,
                        textField: TextField(
                          controller: password_controller,
                          style: Entry_TextStyle,
                          obscureText: true,
                          decoration: InputDecoration.collapsed(
                            hintText: "Contraseña",
                            hintStyle: Entry_Hint_TextStyle,
                            border: InputBorder.none
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Yes_No_Button(
                            text: "Registrar",
                            text_style: Libel_Suit_Small_White_TextStyle,
                            color: blue_color,
                            width: 160,
                            onPressed: ()=>null,
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ),
      ),
    );
  }
}