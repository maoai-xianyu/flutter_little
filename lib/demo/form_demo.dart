import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        // ThemeData 会代替应用的所有主题
        /*  data: ThemeData(
          primaryColor: Colors.black,
        ),
      */
        // 覆盖主题色,之前设置其他主题会保留
        data: Theme.of(context).copyWith(
          primaryColor: Colors.black,
        ),

        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFieldDemo(),
            ],
          ),
        ),
      ),
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      // 文本框的样式
      decoration: InputDecoration(
        icon: Icon(Icons.subject),
        labelText: 'Title',
        hintText: 'Enter the post title.',
        // 拿掉下划线
        // border: InputBorder.none,
        // 文本框进入焦点的时候，会哟动画
        border: OutlineInputBorder(),

      ),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor,
    );
  }
}
