import 'package:Easy2English/screens/sign_up_screen/sign_up_screen.dart';
import 'package:Easy2English/screens/students_screen/students_screen.dart';
import 'package:Easy2English/styles.dart';
import 'package:Easy2English/widgets/auth_button.dart';
import 'package:Easy2English/widgets/auth_entry.dart';
import 'package:Easy2English/widgets/custom_appbar.dart';
import 'package:email_validator/email_validator.dart';
import "package:flutter/material.dart";
import 'package:fluttertoast/fluttertoast.dart';

class Sign_In_Screen extends StatefulWidget {

  @override
  _Sign_In_ScreenState createState() => _Sign_In_ScreenState();
}

class _Sign_In_ScreenState extends State<Sign_In_Screen> {

  TextEditingController email_editing_controller = TextEditingController();
  var email_icon_color = grey_color;
  var email_text_style = Entry_TextStyle;

  TextEditingController password_editing_controller = TextEditingController();
  var password_icon_color = grey_color;
  var password_text_style = Entry_TextStyle;

  void _sign_in(){

    bool _valid_email = false;
    bool _valid_password = false;

    if (!EmailValidator.validate(email_editing_controller.text.trim())){
      setState(() {
        email_icon_color = red_color;
        email_text_style = Entry_Error_TextStyle;
      });
    }else{
      _valid_email = true;
    }

    if (password_editing_controller.text.length < 6){
      setState(() {
        password_icon_color = red_color;
        password_text_style = Entry_Error_TextStyle;
      });
      Fluttertoast.showToast(
        msg:"Mínimo 6 caracteres de contraseña",
        backgroundColor: blue_color,
        textColor: Colors.white,
        fontSize: 17
      );
    }else{
      _valid_password = true;
    }

    if (_valid_email && _valid_password){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Students_Screen()));
    }
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>FocusScope.of(context).unfocus(),
      child: SafeArea(
        child: Scaffold(
          appBar: Custom_AppBar(
            text: "Easy2English",
            center_title: true,
          ),
          body:
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(70),
                  topRight: Radius.circular(70)
              ),
              child: Container(
                height:MediaQuery.of(context).size.height-AppBar().preferredSize.height-MediaQuery.of(context).padding.top,
                color:Colors.white,
                child: NotificationListener<OverscrollIndicatorNotification>(
                  onNotification: (overscroll) {
                    overscroll.disallowGlow();
                  },
                  child: ListView(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    children: [
//LOGO IMAGE
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: SizedBox(
                          width:141,
                          height: 189,
                          child: Image(image: AssetImage("assets/images/logo_app_sin_fondo.png"),)
                          ),
                      ),
//Email Entry
                      Auth_Entry(
                        icon: Icon(Icons.mail, color: email_icon_color, size: 34,),
                        textField: TextField(
                          controller: email_editing_controller,
                          keyboardType: TextInputType.emailAddress,
                          style: email_text_style,
                          decoration: InputDecoration.collapsed(
                            hintText: "Email",
                            hintStyle: Entry_Hint_TextStyle,
                            border: InputBorder.none
                          ),
                          onChanged: (value){
                            if(email_icon_color==red_color){
                              setState(() {
                                email_icon_color = blue_color;
                                email_text_style = Entry_TextStyle;
                              });
                            }
                            if (value.isEmpty){
                              setState(() {
                                email_icon_color = grey_color;
                              });
                            }else{
                              setState(() {
                                email_icon_color = blue_color;
                              });
                            }
                          },
                        ),
                      ),
                      SizedBox(height:21),
//Password Entry
                      Auth_Entry(
                        icon: Icon(Icons.lock, color: password_icon_color, size: 34),
                        textField: TextField(
                          controller: password_editing_controller,
                          keyboardType: TextInputType.visiblePassword,
                          style: password_text_style,
                          obscureText: true,
                          decoration: InputDecoration.collapsed(
                            hintText: "Password",
                            hintStyle: Entry_Hint_TextStyle,
                            border: InputBorder.none,
                          ),
                          onChanged: (value){
                            if(password_icon_color==red_color){
                              setState(() {
                                password_icon_color = blue_color;
                                password_text_style = Entry_TextStyle;
                              });
                            }
                            if (value.isEmpty){
                              setState(() {
                                password_icon_color = grey_color;
                              });
                            }else{
                              setState(() {
                                password_icon_color = blue_color;
                              });
                            }
                          },
                        ),
                      ),
//Forgot Password
                      GestureDetector(
                        child:Container(
                          padding: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 16.0),
                          child: Row(
                            children: [
                              Spacer(),
                              Text("¿Se le ha olvidado la contraseña?",
                                style: Comfortaa_Red_TextSyle
                              ),
                            ],
                          ),
                        )
                      ),
                      SizedBox(height: 15,),
//SignIn Button
                      Auth_Button(
                        text:"Iniciar Sesión",
                        onPressed: ()=>_sign_in(),
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(top:15, bottom: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center ,
                          children: [
                            Text("¿No tiene un cuenta?", style: Comfortaa_Regular_TextSyle),
                            GestureDetector(
                              child: Container(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text("Regístrese aquí!", style: Comfortaa_Red_TextSyle,),
                              ),
                              onTap: ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Sign_Up_Screen())),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          backgroundColor: blue_color,
        ),
      ),
    );
  }
}