import 'package:flutter/material.dart';
import 'package:workout_app/screens/exercises_screen.dart';

class WorkoutItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  WorkoutItem(this.id, this.title, this.color);

  void selectedWorkout(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(ExercisesScreen.routeName,
        arguments: {
          'id': id, 
        'title': title, 
        }
        );
  }

  @override
  Widget build(BuildContext context) {
    //using const tells the build function that this widget does not need to rerun.(used to optimise)
    return InkWell(
      onTap: () => selectedWorkout(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.title,
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color.withOpacity(0.7), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
