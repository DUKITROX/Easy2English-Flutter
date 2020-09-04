import 'package:flutter/material.dart';
import 'package:Easy2English/styles.dart';

class Custom_AppBar extends StatelessWidget implements PreferredSizeWidget{

  Custom_AppBar({this.actions,@required this.text, this.center_title});

  final String text;
  final bool center_title;
  List<Widget> actions;

  final _preferred_height = AppBar().preferredSize.height;

  @override
  Widget build(BuildContext context){
    return Container(
      child: AppBar(
        backgroundColor: blue_color,
        title: Text(text, style: AppBar_TextStyle,),
        centerTitle: center_title,
        actions: actions,
        ),
      margin: EdgeInsets.only(bottom:2),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(_preferred_height);
}