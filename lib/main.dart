// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'description_place.dart';
import 'review_list.dart';
import 'gradient_back.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({Key? key})
      : super(key: key); // Added 'Key?' and called the superclass constructor

  String dummyDescription =
      "Cercado is a captivating and vibrant district located in the heart of Cochabamba, Bolivia. Nestled amidst the stunning Andean landscapes, this charming area offers a perfect blend of tradition and modernity, creating an unforgettable experience for visitors and residents alike.";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              DescriptionPlace("Cochabamba", 4, dummyDescription),
              ReviewList()
            ],
          ),
          GradientBack()
        ],
      )
          // body: Column(
          //
          // )
          ),
    );
  }
}
