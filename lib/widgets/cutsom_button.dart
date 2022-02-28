import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color colour;
  final Color textColour;
  final String text;
  final double height;
  final double width;
  final double elevation;
  final double textFontSize;
  final Function() onPress;
  final double edgeRadius;

  CustomButton(
      {this.colour = Colors.white,
        required this.text,
        required this.onPress,
        this.height = 42.0,
        this.width = 200.0,
        this.textColour = Colors.black,
        this.textFontSize = 25.0,
        this.edgeRadius = 0.0,
        this.elevation = 0.0});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation,
      color: colour,
      borderRadius: BorderRadius.circular(edgeRadius),
      child: MaterialButton(
        onPressed: onPress,
        minWidth: width,
        height: height,
        child: Text(
          text,
          style: TextStyle(color: textColour, fontSize: textFontSize, fontFamily: 'Dongle', fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
