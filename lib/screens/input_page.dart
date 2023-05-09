
import 'package:bmi_calc_flutter/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../icon_content.dart';
import '../components/reusable_card.dart';
import '../components/constants.dart';
import 'results_page.dart';
import '../components/bottom_button.dart';
import 'package:bmi_calc_flutter/calculateor_brain.dart';
enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 180;
  int weight = 150;
  int age = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF0E1525),
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                  Colour: selectedGender == Gender.male
                      ? kActiveCardColour
                      : kInactiveCardColour,
                  cardChild: const IconContents(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  Colour: selectedGender == Gender.female
                      ? kActiveCardColour
                      : kInactiveCardColour,
                  cardChild: const IconContents(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                )),
              ],
            )),
            Expanded(
              child: ReusableCard(
                onPress: () {
                  setState(() {
                    selectedGender = Gender.male;
                  });
                },
                Colour: kInactiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'HEIGHT',
                      style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(height.toString(), style: kNumberTextStyle),
                        const Text(
                          'cm',
                          style: kLabelTextStyle,
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbColor: Colors.purpleAccent,
                        overlayColor: Colors.purple,
                        thumbShape:
                            const RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            const RoundSliderOverlayShape(overlayRadius: 30),
                        rangeThumbShape: const RoundRangeSliderThumbShape(
                            enabledThumbRadius: 10.0),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 100.0,
                        max: 250.0,
                        activeColor: Colors.amber,
                        inactiveColor: Colors.purpleAccent,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('WEIGHT', style: kLabelTextStyle),
                          // continue here
                          Text(
                            weight.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {setState(() {
                                  weight--;
                                });},
                                icon: const Icon(FontAwesomeIcons.minus),
                                color: Colors.indigo,
                                highlightColor: Colors.lightBlueAccent,
                                iconSize: 30.0,
                                hoverColor: Colors.lightBlueAccent,

                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              IconButton(
                                onPressed: () {setState(() {
                                  weight++;
                                });},
                                icon: const Icon(FontAwesomeIcons.add),
                                color: Colors.indigo,
                                highlightColor: Colors.lightBlueAccent,
                                iconSize: 30.0,
                                hoverColor: Colors.lightBlueAccent,
                              ),
                            ],
                          )
                        ],
                      ),
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      Colour: kInactiveCardColour,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('AGE', style: kLabelTextStyle),
                          // continue here
                          Text(
                            age.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {setState(() {
                                  age--;
                                });},
                                icon: const Icon(FontAwesomeIcons.minus),
                                color: Colors.indigo,
                                highlightColor: Colors.lightBlueAccent,
                                iconSize: 30.0,
                                hoverColor: Colors.lightBlueAccent,

                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              IconButton(
                                onPressed: () {setState(() {
                                  age++;
                                });},
                                icon: const Icon(FontAwesomeIcons.add),
                                color: Colors.indigo,
                                highlightColor: Colors.lightBlueAccent,
                                iconSize: 30.0,
                                hoverColor: Colors.lightBlueAccent,
                              ),
                            ],
                          )
                        ],
                      ),
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      Colour: kInactiveCardColour,
                    ),
                  ),

                ],

              ),

            ),
            BottomButton(buttonTitle: 'CALCULATE',
            onTap: () {
              // Last major function

              CalculatorBrain calc = CalculatorBrain(height: height, weight: weight);



              Navigator.push(context, MaterialPageRoute(builder: (context) => ResultsPage(
                interpretation: calc.getInterpretation(),
                bmiResult: calc.calculateBMI().toStringAsFixed(4),
                resultText: calc.getResult(),
              )));

            }),
          ],
        ));
  }
}

// There was no need to Rebuild the RawMaterialButton
// I don't know how to make a bg fill but I can wrap it in a container later.



