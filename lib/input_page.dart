import 'package:flutter/material.dart';
const bottomContainerHeight = 45.0;
const activeCardColour = Color(0xFF2E2D2E);
const bottomContainerColour = Color(0xFFEB1555);
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
              children: const [
                Expanded(
                    child: ReusableCard(
                      Colour: activeCardColour,
                )),
                Expanded(
                    child: ReusableCard(
                      Colour: activeCardColour,
                )),

              ],

            )),
            const Expanded(
              child: ReusableCard(
                Colour: Colors.amber,
              ),
            ),
            Expanded(
                child: Row(
              children: const [
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

class ReusableCard extends StatelessWidget {
  const ReusableCard({super.key, this.Colour, this.cardChild});

  final Colour; // color filled in
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: const EdgeInsets.all(15.0),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
/*



 */
