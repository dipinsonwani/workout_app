import 'package:flutter/material.dart';
import 'package:workout_app/models/workout.dart';
import 'package:workout_app/widgets/exercise_item.dart';
import '../workout_type.dart';

class ExercisesScreen extends StatelessWidget {
  static const routeName = '/exercises_screen';
  // final String workoutId;
  // final String workoutTitle;

  // ExercisesScreen(this.workoutId,this.workoutTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final workoutId = routeArgs['id'];
    final workoutTitle = routeArgs['title'];
    //using where method to return the value of mapped elements with the condition of an id
    final categoryExercise = EXERCISE_DATA.where((exercise) {
      return exercise.categories.contains(workoutId);
    }).toList();
    return Scaffold(
        appBar: AppBar(title: Text(workoutTitle)),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return ExerciseItem(imageUrl: categoryExercise[index].imageUrl, title: categoryExercise[index].title);
          },
          itemCount: categoryExercise.length,
        ));
  }
}
