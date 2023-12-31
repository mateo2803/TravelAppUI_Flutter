// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  String pathImage = "assets/img/landscape1.jpg";
  CardImage(this.pathImage);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final card = Container(
      height: 350.0,
      width: 250.0,
      margin: EdgeInsets.only(top: 80.0, left: 20.0),
      decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage)),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 0.7))
          ]),
    );

    return card;
  }
}
