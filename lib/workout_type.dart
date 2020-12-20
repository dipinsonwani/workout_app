import 'package:flutter/material.dart';
import 'package:workout_app/models/workout.dart';
import './models/exercise.dart';

const List<Workout> WORKOUT_TYPE = const [
  Workout(id: "c1", title: 'Biceps', color: Colors.purple),
  Workout(id: "c2", title: 'Triceps', color: Colors.red),
  Workout(id: "c3", title: 'Back', color: Colors.green),
  Workout(id: "c4", title: 'Legs', color: Colors.orange),
  Workout(id: "c5", title: 'Forearms', color: Colors.lightBlue),
  Workout(id: "c6", title: 'Calf', color: Colors.lime),
  Workout(id: "c7", title: 'Shoulders', color: Colors.red),
  Workout(id: "c6", title: 'Calf', color: Colors.purple),
  Workout(id: "c8", title: 'Abs', color: Colors.teal),
  Workout(id: "c9", title: 'Calf', color: Colors.blueAccent),
  Workout(id: "c10", title: 'Chest', color: Colors.brown),
  Workout(id: "c6", title: 'All', color: Colors.indigo),
];

const List<Exercise> EXERCISE_DATA = const [
  Exercise(
    id: 'e1',
    categories: ['c1'],
    imageUrl: 'https://www.mensjournal.com/wp-content/uploads/mf/_main_zottmancurl_0.jpg?quality=86&amp;strip=all&amp;w=700&iswp=1',
    title: 'Biceps Curl',
    steps: ['Start standing with a dumbbell in each hand. Your elbows should rest at your sides and your forearms should extend out in front of your body.',
    'Bring the dumbbells all the way up to your shoulders by bending your elbows. Once at the top, hold for a second by squeezing the muscle.',
    'Reverse the curl slowly and repeat.']),
  Exercise(
    id: 'e2',
    categories: ['c1'],
    imageUrl: 'https://www.mensjournal.com/wp-content/uploads/mf/_main_zottmancurl_0.jpg?quality=86&amp;strip=all&amp;w=700&iswp=1',
    title: 'Concentration Curls',
    steps: ['Start standing with a dumbbell in each hand. Your elbows should rest at your sides and your forearms should extend out in front of your body.',
    'Bring the dumbbells all the way up to your shoulders by bending your elbows. Once at the top, hold for a second by squeezing the muscle.',
    'Reverse the curl slowly and repeat.']),
  Exercise(
    id: 'e3',
    categories: ['c2'],
    imageUrl: 'https://www.mensjournal.com/wp-content/uploads/mf/_main_zottmancurl_0.jpg?quality=86&amp;strip=all&amp;w=700&iswp=1',
    title: 'Triceps Dips',
    steps: ['Start standing with a dumbbell in each hand. Your elbows should rest at your sides and your forearms should extend out in front of your body.',
    'Bring the dumbbells all the way up to your shoulders by bending your elbows. Once at the top, hold for a second by squeezing the muscle.',
    'Reverse the curl slowly and repeat.']),
  Exercise(
    id: 'e4',
    categories: ['c2'],
    imageUrl: 'https://www.mensjournal.com/wp-content/uploads/mf/_main_zottmancurl_0.jpg?quality=86&amp;strip=all&amp;w=700&iswp=1',
    title: 'Triceps PushDown',
    steps: ['Start standing with a dumbbell in each hand. Your elbows should rest at your sides and your forearms should extend out in front of your body.',
    'Bring the dumbbells all the way up to your shoulders by bending your elbows. Once at the top, hold for a second by squeezing the muscle.',
    'Reverse the curl slowly and repeat.']),
  Exercise(
    id: 'e4',
    categories: ['c3'],
    imageUrl: 'https://www.mensjournal.com/wp-content/uploads/mf/_main_zottmancurl_0.jpg?quality=86&amp;strip=all&amp;w=700&iswp=1',
    title: 'Back Lat Pulldown',
    steps: ['Start standing with a dumbbell in each hand. Your elbows should rest at your sides and your forearms should extend out in front of your body.',
    'Bring the dumbbells all the way up to your shoulders by bending your elbows. Once at the top, hold for a second by squeezing the muscle.',
    'Reverse the curl slowly and repeat.']),
  Exercise(
    id: 'e5',
    categories: ['c4'],
    imageUrl: 'https://www.mensjournal.com/wp-content/uploads/mf/_main_zottmancurl_0.jpg?quality=86&amp;strip=all&amp;w=700&iswp=1',
    title: 'Legs Squats',
    steps: ['Start standing with a dumbbell in each hand. Your elbows should rest at your sides and your forearms should extend out in front of your body.',
    'Bring the dumbbells all the way up to your shoulders by bending your elbows. Once at the top, hold for a second by squeezing the muscle.',
    'Reverse the curl slowly and repeat.']),

];
