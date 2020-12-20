import 'dart:ui';
import '../screens/exercise_detail_screen.dart';
import 'package:flutter/material.dart';

class ExerciseItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  ExerciseItem(
      {@required this.imageUrl, @required this.title, @required this.id});
  void selectedExercise(BuildContext context) {
    Navigator.pushNamed(context, ExerciseDetailScreen.routeName,arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => selectedExercise(context),
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
                  Positioned(
                    bottom: 20,
                    right: 10,
                    child: Container(
                      //height: 200,
                      width: 220,
                      color: Colors.black54,
                      child: Text(
                        title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                        ),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
