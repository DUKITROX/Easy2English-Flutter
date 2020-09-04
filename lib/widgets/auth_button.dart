import 'package:Easy2English/styles.dart';
import 'package:flutter/material.dart';

class Auth_Button extends StatelessWidget{

  Auth_Button({@required this.text, this.onPressed});
  String text;
  Function onPressed;

  @override
  Widget build(BuildContext context){
    return InkWell(
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width-39,
            height: 56,
            alignment: Alignment.centerLeft,
            child: Center(child: 
              Text(text, style: Auth_Button_TextStyle)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: red_color,
              boxShadow: [
                BoxShadow(
                  color: shadow_color,
                  offset: Offset(5,5),
                  blurRadius: 4.0
                )
              ]
            ),
          ),
        ],
      ),
      onTap: onPressed,
    );
  }
}