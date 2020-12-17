import 'package:flutter/material.dart';
import './workout_type.dart';
import './workout_item.dart';

class WorkoutsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Workout App')),
      body: GridView(
        padding: const EdgeInsets.all(25),
        children: WORKOUT_TYPE
            .map((data) => WorkoutItem(data.id,data.title, data.color))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
      ),
    );
  }
}
