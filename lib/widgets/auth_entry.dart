import 'package:Easy2English/styles.dart';
import 'package:flutter/material.dart';

class Auth_Entry extends StatefulWidget{

  Auth_Entry({this.icon:const Icon(Icons.schedule, size:0), this.spacing:12.0, @required this.textField});
  double spacing;
  Icon icon;
  TextField textField;

  @override
  _Auth_EntryState createState() => _Auth_EntryState();
}

class _Auth_EntryState extends State<Auth_Entry> {

  @override
  Widget build(BuildContext context){
    return ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Container(
              alignment: Alignment.bottomCenter,
                width:double.infinity,
                height:56,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical:8),
                color:light_color,
                child:Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      widget.icon,
                      SizedBox(width:widget.spacing),
                      Expanded(child: widget.textField)
                    ],
                  ),
                )
        ),
      );
  }
}