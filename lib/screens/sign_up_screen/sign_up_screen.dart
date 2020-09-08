import 'package:Easy2English/screens/sign_in_screen/sign_in_screen.dart';
import 'package:Easy2English/services/authentication_methods.dart';
import 'package:Easy2English/styles.dart';
import 'package:Easy2English/widgets/auth_button.dart';
import 'package:Easy2English/widgets/auth_entry.dart';
import 'package:Easy2English/widgets/custom_appbar.dart';
import 'package:email_validator/email_validator.dart';
import "package:flutter/material.dart";
import 'package:fluttertoast/fluttertoast.dart';

class Sign_Up_Screen extends StatefulWidget {

  @override
  _Sign_Up_ScreenState createState() => _Sign_Up_ScreenState();
}

class _Sign_Up_ScreenState extends State<Sign_Up_Screen> {

  TextEditingController email_editing_controller = TextEditingController();
  var email_icon_color = grey_color;
  var email_text_style = Entry_TextStyle;

  TextEditingController password_editing_controller = TextEditingController();
  var password_icon_color = grey_color;
  var password_text_style = Entry_TextStyle;

  TextEditingController confirmation_editing_controller = TextEditingController();
  var confirmation_icon_color = grey_color;
  var confirmation_text_style = Entry_TextStyle;

  bool is_loading = false;

  void _sign_up(){
    if (!EmailValidator.validate(email_editing_controller.text.trim())){
      setState(() {
        email_icon_color = red_color;
        email_text_style = Entry_Error_TextStyle;
      });
    }

    if(password_editing_controller.text.trim().isEmpty && confirmation_editing_controller.text.trim().isEmpty){
      setState(() {
        password_icon_color = red_color;
        password_text_style = Entry_Error_TextStyle;
        confirmation_icon_color = red_color;
        confirmation_text_style = Entry_Error_TextStyle;
      });
      Fluttertoast.showToast(
        msg: "Por favor introduzca una contraseña",
        backgroundColor: blue_color,
        textColor: Colors.white,
        fontSize: 17
      );
    }
    else if(password_editing_controller.text.trim() != confirmation_editing_controller.text.trim()){
      setState(() {
        password_icon_color = red_color;
        password_text_style = Entry_Error_TextStyle;
        confirmation_icon_color = red_color;
        confirmation_text_style = Entry_Error_TextStyle;
      });
      Fluttertoast.showToast(
        msg: "Las contraseñas no coinciden",
        backgroundColor: blue_color,
        textColor: Colors.white,
        fontSize: 17
      );
    }
    else if (password_editing_controller.text.length < 6){
      setState(() {
        password_icon_color = red_color;
        password_text_style = Entry_Error_TextStyle;
        confirmation_icon_color = red_color;
        confirmation_text_style = Entry_Error_TextStyle;
      });
      Fluttertoast.showToast(
        msg:"Mínimo 6 caracteres de contraseña",
        backgroundColor: blue_color,
        textColor: Colors.white,
        fontSize: 17
      );
    }
    else if(EmailValidator.validate(email_editing_controller.text.trim())){
      print("Register_Button_Presses");
      setState(() {
        //email_icon_color = blue_color;
        //email_text_style = Entry_TextStyle;
        //password_icon_color = blue_color;
        //password_text_style = Entry_TextStyle;
        //confirmation_icon_color = blue_color;
        //confirmation_text_style = Entry_TextStyle;
        is_loading = true;
      });
      //Authentication_Methods.sign_up(email_editing_controller.text.trim(), password_editing_controller.text.trim()).then((value){
      //  if(value){
//
      //  }else{
      //    setState(() {
      //      is_loading = false;
      //    });
      //  }
      //});
    }
  }
  @override
  Widget build(BuildContext context) {
    if (is_loading) {
      return Scaffold(
        body: Center(
          child: SizedBox(
            width: 40,
            height: 40,
            child: Container(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(blue_color)
              )
    ),
          ),
        ),
      );
    } else {
      return GestureDetector(
      onTap: ()=>FocusScope.of(context).unfocus(),
      child: SafeArea(
        child: Scaffold(
          appBar: Custom_AppBar(
            text: "Easy2English",
            center_title: true,
          ),
          body: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(70),
              topRight: Radius.circular(70)
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height:MediaQuery.of(context).size.height-AppBar().preferredSize.height-MediaQuery.of(context).padding.top,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    color:Colors.white,
                    child: Column(
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
                              hintText: "Contraseña",
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
                        SizedBox(height:21),
                        Auth_Entry(
                          icon: Icon(Icons.lock, color: confirmation_icon_color, size: 34),
                          textField: TextField(
                            controller: confirmation_editing_controller,
                            keyboardType: TextInputType.visiblePassword,
                            style: confirmation_text_style,
                            obscureText: true,
                            decoration: InputDecoration.collapsed(
                              hintText: "Repita Contraseña",
                              hintStyle: Entry_Hint_TextStyle,
                              border: InputBorder.none,
                            ),
                            onChanged: (value){
                              if(confirmation_icon_color==red_color){
                                setState(() {
                                  confirmation_icon_color = blue_color;
                                  confirmation_text_style = Entry_TextStyle;
                                });
                              }
                              if (value.isEmpty){
                                setState(() {
                                  confirmation_icon_color = grey_color;
                                });
                              }else{
                                setState(() {
                                  confirmation_icon_color = blue_color;
                                });
                              }
                            },
                          ),
                        ),
                        SizedBox(height: 23,),
//SignIn Button
                        Auth_Button(
                          text:"Registrarse",
                          onPressed: ()=>_sign_up(),
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(top:15, bottom: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center ,
                            children: [
                              Text("¿Ya tiene una cuenta?", style: Comfortaa_Regular_TextSyle),
                              GestureDetector(
                                child: Container(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Text("Inicie sesión aquí!", style: Comfortaa_Red_TextSyle,),
                                ),
                                onTap: ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Sign_In_Screen())),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ),
            ),
          backgroundColor: blue_color,
        ),
      ),
    );
    }
  }
}