// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace,
      {super.key});

  @override
  Widget build(BuildContext context) {
    final star = Container(
      margin: EdgeInsets.only(top: 300.0, right: 3.0),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final starHalf = Container(
      margin: EdgeInsets.only(top: 300.0, right: 3.0),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    final starEmpty = Container(
      margin: EdgeInsets.only(top: 300.0, right: 3.0),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final titleStars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 300.0, left: 20.0, right: 20.0),
          child: Text(
            namePlace,
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w900),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: List.generate(
            5,
            (index) => stars >= index + 1 ? star : starEmpty,
          ),
        )
      ],
    );

    final description = Container(
      margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
      child: Text(
        descriptionPlace,
        style: TextStyle(fontSize: 15.0),
        textAlign: TextAlign.justify,
      ),
    );

    final content = Column(
      children: <Widget>[titleStars, description],
    );

    return content;
  }
}
