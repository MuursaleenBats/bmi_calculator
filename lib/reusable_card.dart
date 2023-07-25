import 'package:flutter/material.dart';

enum GenderType { none, male, female }

GenderType selectedGender = GenderType.none;

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {required this.colour, required this.childCard, required this.onPress});

  final Color colour;
  Widget childCard;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress();
      },
      child: Container(
        child: childCard,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
