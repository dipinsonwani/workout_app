import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

class ExerciseItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  ExerciseItem({@required this.imageUrl, @required this.title});
  void selectedExercise() {}
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: selectedExercise,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 4,
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    child: Image.network(
                      imageUrl,
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    "title",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 26, 
                    ),
                    softWrap: true,
                  )
                ],
              )
            ],
          ),
        ));
  }
}
