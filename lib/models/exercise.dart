import 'package:flutter/cupertino.dart';

class Exercise {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> steps;

  const Exercise(
      {@required this.id, 
      @required this.title, 
      @required this.categories,
      @required this.imageUrl,
      @required this.steps});
}
