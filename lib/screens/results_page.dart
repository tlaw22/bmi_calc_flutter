import 'package:flutter/material.dart';
import '../components/constants.dart';
import '../components/reusable_card.dart';
import 'package:bmi_calc_flutter/screens/input_page.dart';
import 'package:bmi_calc_flutter/components/bottom_button.dart';
class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.interpretation,
        required this.bmiResult,
        required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF161B22),
      title: Text('BMI CALCULATOR'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget> [
          Expanded(child: Container(padding: EdgeInsets.all(15),alignment: Alignment.bottomLeft,color: kInactiveCardColour,width: double.infinity - 25,
            child: Text('You Result'),
          ),
          ),
          Expanded(
            flex: 5,
            child: Container(width: double.infinity ,
              child: ReusableCard(Colour: kInactiveCardColour,onPress: () {},
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                    Text(resultText.toUpperCase(), style: kResultsPage),
                    Text(bmiResult, style: kResultsPage, textScaleFactor: 4),
                    Text(interpretation.toUpperCase()),

                  ],

                ),

          ),
            ),
          ),
            BottomButton(onTap: () {
              Navigator.pop(context);
            }, buttonTitle: 'Re-Calculate')
        ] ,
      ),

    );
  }
}
