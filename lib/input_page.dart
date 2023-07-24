import 'package:flutter/material.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerColor = Color(0xFFEB1555);
const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1F33);
const inactiveCardColour = Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = inactiveCardColour;
  Color femaleCardColour = inactiveCardColour;
  //1 for male 2 for female
  void updateColor(int gender) {
    if (gender == 1) {
      if (maleCardColour == inactiveCardColour) {
        maleCardColour = activeCardColour;
        femaleCardColour = inactiveCardColour;
      } else {
        maleCardColour = inactiveCardColour;
      }
    } else {
      if (femaleCardColour == inactiveCardColour) {
        femaleCardColour = activeCardColour;
        maleCardColour = inactiveCardColour;
      } else {
        femaleCardColour = inactiveCardColour;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: ReusableCard(
                      colour: maleCardColour,
                      childCard: IconContertWidget(
                        gender: 'Male',
                        iconName: Icon(
                          Icons.male_rounded,
                          size: 80,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: ReusableCard(
                      colour: femaleCardColour,
                      childCard: IconContertWidget(
                        gender: 'Female',
                        iconName: Icon(
                          Icons.female_rounded,
                          size: 80,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: Color(0xFF1D1F33),
              childCard: Column(
                children: [Text(' ')],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xFF1D1F33),
                    childCard: Text(' '),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xFF1D1F33),
                    childCard: Text(' '),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            width: double.infinity,
            height: bottomContainerHeight,
            margin: EdgeInsets.only(top: 10.0),
          ),
        ],
      ),
    );
  }
}
