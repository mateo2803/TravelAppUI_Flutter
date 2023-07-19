import 'package:flutter/material.dart';
import 'package:flutter_project/review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final reviews = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/person1.png", "Lolito", "1 review 5 photos",
            "Muy bonito pai"),
        Review("assets/img/person2.png", "Pepe", "1 review 1 photos", "Great"),
        Review(
            "assets/img/person3.png", "San", "5 review 1 photos", "Si a todo"),
      ],
    );

    return reviews;
  }
}
