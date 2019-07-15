import 'package:flutter/material.dart';

class SnakeBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SnakeBarDemoState();
  }
}

class _SnakeBarDemoState extends State<SnakeBarDemo> {
  int _currentIndex = 0;

  void _onTapHandler(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('SnakeBarDemo'),
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
                SnakeBarButton(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class SnakeBarButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        child: Text('Options'),
        onPressed: () {
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text('Process....'),
              action: SnackBarAction(
                label: 'ok',
                onPressed: (){

                },
              ),              
            )
          );
        },
      ),
    );
  }
}
