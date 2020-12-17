import 'package:flutter/material.dart';

class Workout {
  final String id;
  final String title;
  final Color color;

  const Workout({@required this.id, @required this.title, this.color});
}
