
import 'dart:ui';

import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String text, IconData icon){
    return ListTile(
          leading: Icon(icon, size: 26),
          title: Text(
            text,
            style: TextStyle(
              fontFamily: "RobotoCondensed",
              fontSize:24,
              fontWeight:FontWeight.bold,
            ),
          ),
          onTap: (){},
        );
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: <Widget>[
        Container(
          width: double.infinity,
          height: 120,
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.all(20),
          color: Theme.of(context).accentColor,
          child: Text(
            'Menu!',
            style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).primaryColor),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        buildListTile('Workouts', Icons.fitness_center),
        buildListTile('Settings', Icons.settings)
      ]),
    );
  }
}
