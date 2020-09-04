import 'package:Easy2English/screens/sign_in_screen/sign_in_screen.dart';
import 'package:Easy2English/screens/students_screen/custom_dialog_register.dart';
import 'package:Easy2English/screens/students_screen/custom_dialog_yes_no.dart';
import 'package:Easy2English/screens/students_screen/popup_menu.dart';
import 'package:Easy2English/screens/students_screen/student_tile.dart';
import 'package:flutter/material.dart';
import 'package:Easy2English/widgets/custom_appbar.dart';
import 'package:Easy2English/styles.dart';

class Students_Screen extends StatefulWidget {
  @override
  _Students_ScreenState createState() => _Students_ScreenState();
}

class _Students_ScreenState extends State<Students_Screen> {

  void on_popup_menu(String value){
    if(value=="Cerrar Sesión"){
      showDialog(
        context: context,
        builder:(_)=>Custom_Dialog_Yes_No(
          text: "¿Quiere cerrar sesión?",
          onPressed:()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Sign_In_Screen())),
        )
      );
    }else if(value=="Eliminar Cuenta"){
      showDialog(
        context: context,
        builder:(_)=>Custom_Dialog_Yes_No(
          text: "¿Está seguro de que quiere eliminar esta cuenta?",
          onPressed:()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Sign_In_Screen())),
        )
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Custom_AppBar(
        text: "Easy2English",
        center_title: true,
        actions: [
          PopUp_Menu(onSelected:(value)=>on_popup_menu(value))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: red_color,
        child: Icon(Icons.add, size: 37,),
        onPressed: ()=>showDialog(context:context, builder:(_)=>Custom_Dialog_Register()),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          children: [
            Student_Tile(
              name: "Eustaqio",
              level: "PR 5",
              schedule: "asdadasda",
              teacher: "Dunkito",
              onPressed: ()=>print("pressed"),
            ),
          ],
        ),
      ),
    );
  }
}