import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget flatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // 文字按钮
        FlatButton(
          child: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey, // 渐墨效果
          textColor: Theme.of(context).accentColor,
        ),
        FlatButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey, // 渐墨效果
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    final Widget raiseButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // 按钮有颜色和阴影
        RaisedButton(
          child: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey, // 渐墨效果
          elevation: 0.0,
          color: Theme.of(context).accentColor, //按钮的填充颜色
          //textColor: Colors.white, // 文字颜色
          textTheme: ButtonTextTheme.primary, // 文字颜色
        ),
        SizedBox(
          width: 20.0,
        ),
        Theme(
          data: Theme.of(context).copyWith(
              buttonColor: Theme.of(context).accentColor,
              buttonTheme: ButtonThemeData(
                textTheme: ButtonTextTheme.primary,
                /* shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ), */
                shape: StadiumBorder(),
              )),
          child: RaisedButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey, // 渐墨效果
            elevation: 0.0,
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        RaisedButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          elevation: 12.0,
          splashColor: Colors.grey, // 渐墨效果
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    final Widget outlineButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // 描边按钮
        OutlineButton(
          child: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey, // 渐墨效果
          color: Theme.of(context).accentColor, //按钮的填充颜色
          //textColor: Colors.white, // 文字颜色
          textTheme: ButtonTextTheme.accent, // 文字颜色
        ),
        SizedBox(
          width: 20.0,
        ),
        Theme(
          data: Theme.of(context).copyWith(
              buttonColor: Theme.of(context).accentColor,
              buttonTheme: ButtonThemeData(
                textTheme: ButtonTextTheme.primary,
                /* shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ), */
                shape: StadiumBorder(),
              )),
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey[100], // 渐墨效果
            // 描边颜色
            borderSide: BorderSide(
              color: Colors.black,
            ),
            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        OutlineButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: () {},
          splashColor: Colors.grey, // 渐墨效果
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    final Widget fixedWidthButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 130.0,
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey[100], // 渐墨效果
            // 描边颜色
            borderSide: BorderSide(
              color: Colors.black,
            ),
            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
          ),
        ),
      ],
    );

    final Widget expended = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey[100], // 渐墨效果
            // 描边颜色
            borderSide: BorderSide(
              color: Colors.black,
            ),
            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        Expanded(
          flex: 2,
          child: OutlineButton(
            child: Text('Button'),
            onPressed: () {},
            splashColor: Colors.grey[100], // 渐墨效果
            // 描边颜色
            borderSide: BorderSide(
              color: Colors.black,
            ),
            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
          ),
        ),
      ],
    );

    final Widget buttonBarDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
              buttonTheme: ButtonThemeData(
            padding: EdgeInsets.symmetric(horizontal: 32.0),
          )),
          // 有边距的按钮
          child: ButtonBar(
            children: <Widget>[
              OutlineButton(
                child: Text('Button'),
                onPressed: () {},
                splashColor: Colors.grey[100], // 渐墨效果
                // 描边颜色
                borderSide: BorderSide(
                  color: Colors.black,
                ),
                textColor: Colors.black,
                highlightedBorderColor: Colors.grey,
              ),
              OutlineButton(
                child: Text('Button'),
                onPressed: () {},
                splashColor: Colors.grey[100], // 渐墨效果
                // 描边颜色
                borderSide: BorderSide(
                  color: Colors.black,
                ),
                textColor: Colors.black,
                highlightedBorderColor: Colors.grey,
              ),
            ],
          ),
        )
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            flatButtonDemo,
            raiseButtonDemo,
            outlineButtonDemo,
            fixedWidthButton,
            expended,
            buttonBarDemo,
          ],
        ),
      ),
    );
  }
}
