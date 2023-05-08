import 'package:flutter/material.dart';
import '../components/constants.dart';
import '../components/reusable_card.dart';
import 'package:bmi_calc_flutter/screens/input_page.dart';
import 'package:bmi_calc_flutter/components/bottom_button.dart';
class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key}) : super(key: key);

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
                    Text('Normal', style: kResultsPage),
                    Text('18.4', style: kResultsPage, textScaleFactor: 4),
                    Text('Yo need to ead a sandwhich!'),

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
