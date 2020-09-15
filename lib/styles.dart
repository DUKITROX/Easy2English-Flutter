import 'package:Easy2English/widgets/auth_button.dart';
import 'package:flutter/material.dart';

hex_color(String hex_color){
  String new_color = "0xff"+hex_color;
  new_color = new_color.replaceAll("#", "");
  int color_int = int.parse(new_color);
  return color_int;
}

final blue_color = Color(hex_color("#031927"));
final red_color = Color(hex_color("#BA1200"));
final grey_color = Color(hex_color("#9EB1AC"));
final light_color = Color(hex_color("#E4EDED"));
final shadow_color = Color(hex_color("#020606")).withOpacity(0.24);

const AppBar_TextStyle = TextStyle(
  fontFamily: "Libel-Suit",
  fontSize: 29,
  color: Colors.white,
);

final Entry_TextStyle = TextStyle(
  fontFamily: "Libel-Suit",
  fontSize: 24,
  color: blue_color
);
final Entry_Error_TextStyle = TextStyle(
  fontFamily: "Libel-Suit",
  fontSize: 24,
  color: red_color
);
final Entry_Hint_TextStyle = TextStyle(
  fontFamily: "Libel-Suit",
  fontSize: 24,
  color: grey_color
);

final Auth_Button_TextStyle = TextStyle(
  fontFamily: "Libel-Suit",
  fontSize:27,
  color:Colors.white,
  letterSpacing: 3
);

final PopupMenuButton_Regular_TextStyle = TextStyle(
  fontFamily: "Libel-Suit",
  fontSize: 20,
  color: blue_color
);
final PopupMenuButton_Red_TextStyle = TextStyle(
  fontFamily: "Libel-Suit",
  fontSize: 20,
  color: red_color
);

final Comfortaa_Regular_TextSyle = TextStyle(
  fontFamily: "Comfortaa",
  fontSize: 15,
  color: blue_color
);
final Comfortaa_Regular_Small_TextSyle = TextStyle(
  fontFamily: "Comfortaa",
  fontSize: 12,
  color: blue_color
);
final Comfortaa_White_TextStyle = TextStyle(
  fontFamily: "Comfortaa",
  fontSize: 15,
  color:Colors.white
);
final Comfortaa_Red_TextSyle = TextStyle(
  fontFamily: "Comfortaa",
  fontSize: 15,
  decoration: TextDecoration.underline,
  color: red_color
);

final Libel_Suit_Big_Blue_TextStyle = TextStyle(
  fontFamily: "Libel-Suit",
  fontSize: 20,
  color: blue_color
);
final Libel_Suit_Big_White_TextStyle = TextStyle(
  fontFamily: "Libel-Suit",
  fontSize: 20,
  color: Colors.white
);
final Libel_Suit_Small_White_TextStyle = TextStyle(
  fontFamily: "Libel-Suit",
  fontSize: 18,
  color: Colors.white
);
final Libel_Suit_Small_Grey_TextStyle = TextStyle(
  fontFamily: "Libel-Suit",
  fontSize: 18,
  color: Colors.grey[600],
);
final Libel_Suit_Small_Blue_TextStyle = TextStyle(
  fontFamily: "Libel-Suit",
  fontSize: 18,
  color: blue_color
);

final Calendar_White_TextStyle = TextStyle(
  fontFamily: "Libel-Suit",
  fontSize: 54,
  color: Colors.white,
);
final Calendar_Grey_TextStyle = TextStyle(
  fontFamily: "Libel-Suit",
  fontSize: 54,
  color: Colors.grey
);