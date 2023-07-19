// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathImage = "assets/img/landscapeNight.jpg";
  String username = "Márcel Barrero";
  String userdetails = "1 review 5 photos";
  String usercomment = "Beautiful place at sunset";

  Review(this.pathImage, this.username, this.userdetails, this.usercomment);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final userComment = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        usercomment,
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w900),
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        userdetails,
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 15.0, color: Color(0xFFa3a5a7)),
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        username,
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 15.0),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[userName, userInfo, userComment],
    );

    final photo = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      width: 60.0,
      height: 60.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );

    return Row(
      children: <Widget>[photo, userDetails],
    );
  }
}
