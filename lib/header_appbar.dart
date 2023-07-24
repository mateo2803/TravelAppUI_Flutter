import 'package:flutter/material.dart';
import 'package:flutter_project/card_image_list.dart';
import 'package:flutter_project/gradient_back.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[GradientBack("Bienvenido"), CardImageList()],
    );
  }
}
