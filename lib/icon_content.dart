import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
  fontSize: 13.0,
  color: Color(0xFF797B86),
);

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
          style: labelTextStyle,
        )
      ],
    );
  }
}
