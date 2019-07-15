import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';

enum Action { Ok, Cancel }

class BottomSheetDemo extends StatefulWidget {
  @override
  _BottomSheetDemoState createState() => _BottomSheetDemoState();
}

// ScaffoldState 上的 bottomSheet
class _BottomSheetDemoState extends State<BottomSheetDemo> {
  final _bottomSheetScaffoldKey = GlobalKey<ScaffoldState>();

// showBottomSheet
  _showBottomSheet() {
    _bottomSheetScaffoldKey.currentState.showBottomSheet((context) {
      return BottomAppBar(
        child: Container(
          height: 90.0,
          width: double.infinity,
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              Icon(Icons.pause_circle_outline),
              SizedBox(
                width: 16.0,
              ),
              Text('01:30 / 03:30'),
              Expanded(
                child: Text(
                  'Fix you - Colplay',
                  textAlign: TextAlign.end,
                ),
              ),
            ],
          ),
        ),
      );
    });
  }

//showModalBottomSheet
  Future _openModalBottomSheet() async {
    final modal = await showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 200.0,
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('Option A'),
                onTap: () {
                  Navigator.of(context).pop('A');
                },
              ),
              ListTile(
                title: Text('Option B'),
                onTap: () {
                  Navigator.of(context).pop('B');
                },
              ),
              ListTile(
                title: Text('Option C'),
                onTap: () {
                  Navigator.of(context).pop('C');
                },
              ),
            ],
          ),
        );
      },
    );
    debugPrint('modal == $modal');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _bottomSheetScaffoldKey,
      appBar: AppBar(
        title: Text('BottomSheetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text('show BottomSheet'),
              onPressed: _showBottomSheet,
            ),
            SizedBox(
              height: 16.0,
            ),
            FlatButton(
              child: Text('modal BottomSheet'),
              onPressed: _openModalBottomSheet,
            ),
          ],
        ),
      ),
    );
  }
}
