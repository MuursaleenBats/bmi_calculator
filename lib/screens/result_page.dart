import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../components/bottom_button.dart';

String result = "NORMAL";
int bmiValue = 15;
String description = "Something to describe goes here and you never know";

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              childCard: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    result,
                    style: kResultTextStyle,
                  ),
                  Text(
                    '18.3',
                    style:
                        TextStyle(fontSize: 100.0, fontWeight: FontWeight.w900),
                  ),
                  Text(
                    'Your BMI is quite low, you should eat more',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              onPress: () {},
            ),
          ),
          Expanded(
            child: BottomButton(
              title: 'RE-CALCULATE',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return InputPage();
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
