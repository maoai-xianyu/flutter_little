import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  int groupValueA = 0;

  void _handleRadioValueChanged(int value) {
    setState(() {
      groupValueA = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RadioButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                  value: 0,
                  groupValue: groupValueA,
                  onChanged: _handleRadioValueChanged,
                  activeColor: Colors.black,
                ),
                Radio(
                  value: 1,
                  groupValue: groupValueA,
                  onChanged: _handleRadioValueChanged,
                  activeColor: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
