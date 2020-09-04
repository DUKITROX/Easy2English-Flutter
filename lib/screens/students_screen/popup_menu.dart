import 'package:Easy2English/styles.dart';
import 'package:flutter/material.dart';

class PopUp_Menu extends StatelessWidget {

  Function onSelected;

  PopUp_Menu({@required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      tooltip: "Opciones",
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(11)
      ),
      color: light_color,
      onSelected: onSelected,
      itemBuilder: (BuildContext context){
        return <PopupMenuEntry<String>>[
          PopupMenuItem(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.subdirectory_arrow_left, color: blue_color, size:28),
                SizedBox(width: 10,),
                Text("Cerrar Sesión", style: PopupMenuButton_Regular_TextStyle,),
              ],
            ),
            value:"Cerrar Sesión",
          ),
          PopupMenuItem(
            height: 3,
            enabled: false,
            child: Divider(
              color: Color(hex_color("#707070")),
              height: 0,
              thickness: 1,
            ),
          ),
          PopupMenuItem(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.delete, color: red_color, size:28),
                SizedBox(width: 10,),
                Text("Eliminar Cuenta", style: PopupMenuButton_Red_TextStyle,),
              ],
            ),
            value:"Eliminar Cuenta",
          )
        ];
      },
    );
  }
}