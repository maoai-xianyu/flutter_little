import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeDemo extends StatefulWidget {
  @override
  _DateTimeDemoState createState() => _DateTimeDemoState();
}

class _DateTimeDemoState extends State<DateTimeDemo> {
  final DateTime selectedDate = DateTime.now();

  void _selectDate() {
    showDatePicker(
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
      initialDate: selectedDate,
      context: context,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DateTimeDemo'),
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
                Text(DateFormat.yMMMd().format(selectedDate)),
                InkWell(
                  onTap: () {
                    _selectDate();
                  },
                  child: Icon(Icons.arrow_drop_down),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
