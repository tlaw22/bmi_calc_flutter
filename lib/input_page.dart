import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 45.0;
const activeCardColour = Color(0xFF2E2D2E);
const bottomContainerColour = Color(0xFFEB1555);
const inactiveCardColour = Color(0xFF0E1525);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {


  Gender selectedGender = Gender.female;



  // Color maleCardColour = activeCardColour;
  // Color femaleCardColour = activeCardColour;

  // void updateColour(Gender selectedGender){
  //   if(selectedGender == Gender.male) {
  //     if (maleCardColour == inactiveCardColour){
  //       maleCardColour = activeCardColour;
  //       femaleCardColour = inactiveCardColour;
  //     } else {
  //       maleCardColour = inactiveCardColour;
  //     }
  //   } if (selectedGender == Gender.female) {
  //     if (femaleCardColour == inactiveCardColour){
  //       femaleCardColour = activeCardColour;
  //       maleCardColour = inactiveCardColour;
  //     } else {
  //       femaleCardColour = inactiveCardColour;
  //     }
  //   }
  // } REPLACE THIS FUNCTION WITH TERNARY OPERATORS
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                  Colour: selectedGender == Gender.male ? activeCardColour : inactiveCardColour,
                  cardChild: IconContents(icon: FontAwesomeIcons.mars,
                  label: 'MALE',),
                )),
                Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                  Colour: selectedGender == Gender.female ? activeCardColour : inactiveCardColour,
                  cardChild: IconContents(icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',),
                )),
              ],
            )),
            Expanded(
              child: ReusableCard(
                Colour: Colors.amber,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(

                      Colour: activeCardColour,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      Colour: activeCardColour,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomContainerColour,
              margin: const EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            ),
          ],
        ));
  }
}


/*



 */
