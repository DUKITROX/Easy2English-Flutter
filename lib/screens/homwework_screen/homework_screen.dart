import 'package:Easy2English/screens/homwework_screen/homework_tile.dart';
import 'package:Easy2English/widgets/custom_appbar.dart';
import 'package:Easy2English/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class Homework_Screen extends StatefulWidget {
  @override
  _Homework_ScreenState createState() => _Homework_ScreenState();
}

class _Homework_ScreenState extends State<Homework_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Custom_AppBar(
        text: "Deberes",
      ),
      endDrawer: Custom_Drawer(
        current_screen: "Homework_Screen",
        name: "Eustaqio",
        level: "PR 5",
        schedule: "asdadasda",
        teacher: "Dunkito",
      ),
      body: ListView(
        children: [
          Homework_Tile(
text: """
ht: 12,
  thickness: 1,
),
Row(
  children: [
    Sp
            """,
            time_stamp: DateTime.now(),
          )
        ],
      ),
    );
  }
}