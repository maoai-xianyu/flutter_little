import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';

enum Action { Ok, Cancel }

class AlertDialogDemo extends StatefulWidget {
  @override
  _AlertDialogDemoState createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  String _choice = "Nothing";
  Future _openAlertDialog() async {
    final choice = await showDialog(
      // dialog外不可点击
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('AlertDialog'),
          content: Text('are you sure about this?'),
          actions: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.pop(context, Action.Cancel);
              },
              child: Text('Cancel'),
            ),
            FlatButton(
              onPressed: () {
                Navigator.pop(context, Action.Ok);
              },
              child: Text('Ok'),
            ),
          ],
        );
      },
    );

    switch (choice) {
      case Action.Ok:
        setState(() {
          _choice = 'Ok';
        });
        break;
      case Action.Cancel:
        setState(() {
          _choice = 'Cancel';
        });
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialogDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('your choice is $_choice'),
            SizedBox(
              height: 16.0,
            ),
            RaisedButton(
              child: Text('open alert'),
              onPressed: _openAlertDialog,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[],
            ),
          ],
        ),
      ),
    );
  }
}
