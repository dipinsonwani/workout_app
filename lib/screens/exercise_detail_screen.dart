
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:workout_app/models/exercise.dart';
import '../workout_type.dart';

class ExerciseDetailScreen extends StatelessWidget {
  static const routeName = '/exercise-detail';

  @override
  Widget build(BuildContext context) {
    
    final exerciseId = ModalRoute.of(context).settings.arguments as String;
    final selectedExercise =
        EXERCISE_DATA.firstWhere((exercise) => exercise.id == exerciseId);
    //firstWhere is used to get the object
    return Scaffold(
        appBar: AppBar(
          title: Text(selectedExercise.title),
        ),
        body: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 300,
              child: Image.network(
                selectedExercise.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Steps:',
                style: Theme.of(context).textTheme.title,
              ),
            ),
            //using Container to give limited height to ListView
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              height: 300,
              child: ListView.builder(
                itemCount: selectedExercise.steps.length,
                itemBuilder: (context,index){
                  return ListTile(title: Text(selectedExercise.steps[index]), leading: CircleAvatar(child:Text('# ${(index+1)}')),);
                },
              ),
            )
          ],
        ));
  }
}
