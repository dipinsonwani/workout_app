import 'package:flutter/material.dart';
class Settings extends StatelessWidget {
  static const routeName ='/settings';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('Settings')),
      body: Center(child: Text('Settings!'))
    );
  }
}