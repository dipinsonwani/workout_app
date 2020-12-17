import 'package:flutter/material.dart';
import 'package:workout_app/models/workout.dart';

class ExercisesScreen extends StatelessWidget {
  // final String workoutId;
  // final String workoutTitle;

  // ExercisesScreen(this.workoutId,this.workoutTitle);
  
  @override
  Widget build(BuildContext context) {
    final routeArgs=ModalRoute.of(context).settings.arguments as Map<String, String>;
    final workoutId = routeArgs['id'];
    final workoutTitle = routeArgs['workoutTitle'];
    return Scaffold(
      appBar: AppBar(title: Text(workoutTitle)),
      body: Center(
        child: Text('Exercises of the specific body part!'),
      ),
    );
  }
}
