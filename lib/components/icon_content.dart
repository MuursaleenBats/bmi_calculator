import 'package:flutter/material.dart';
import '../constants.dart';

class IconContertWidget extends StatelessWidget {
  IconContertWidget({required this.gender, required this.iconName});

  final String gender;
  final Icon iconName;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        iconName,
        Text(
          gender,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
