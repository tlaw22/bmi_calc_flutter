import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 45.0;
const activeCardColour = Color(0xFF2E2D2E);
const bottomContainerColour = Color(0xFFEB1555);
const inactiveCardColor = Colors.yellowAccent;


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColour = inactiveCardColor;

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
                    child: GestureDetector(
                      onTap: () {
                        print('Male card was pressed');
                      },
                      child: ReusableCard(
                  Colour: activeCardColour,
                  cardChild: IconContents(icon: FontAwesomeIcons.mars,
                  label: 'MALE',),
                ),
                    )),
                Expanded(
                    child: ReusableCard(
                  Colour: activeCardColour,
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
