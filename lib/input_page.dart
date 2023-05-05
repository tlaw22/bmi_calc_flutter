
import 'package:flutter/material.dart';


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
          Expanded(child: Row(
            children: const [
              Expanded(child: reusableWidget()),
              Expanded(child: reusableWidget()),
            ],
          )),
          const Expanded(child: reusableWidget(),
          ),
          Expanded(child: Row(
            children: const [
              Expanded(child: reusableWidget(),
              ),
              Expanded(child: reusableWidget(),
              ),
            ],
          )),

        ],
      )
    );
  }
}

class reusableWidget extends StatelessWidget {
  const reusableWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(color: Color(0xFF2E2D2E),
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
/*



 */