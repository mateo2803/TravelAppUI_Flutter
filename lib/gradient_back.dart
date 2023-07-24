// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {
  String title = "Popular";
  GradientBack(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final bgGradient = Container(
      height: 250.0,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.green],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp)),
      child: Text(
        title,
        style: TextStyle(
            color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),
      ),
      alignment: Alignment(-0.9, -0.6),
    );

    return bgGradient;
  }
}
