import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  // 获取变量 $
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichTextDemo();
  }
}

// 一行文字有多种样式
class RichTextDemo extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(
      text: TextSpan(
        text: 'coding type',
        style: TextStyle(
          color: Colors.deepOrangeAccent,
          fontSize: 34.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w100,
        ),
        children: [
          TextSpan(
            text: '@.net',
            style: TextStyle(
              fontSize: 17.0,
              color: Colors.grey,
            )
          )
        ]
      ),
    );
  }
}

// TextSetting 基本属性
class TextSettingDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );

  final String _author = '李白';
  final String _title = '将进酒';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      '《 $_title 》-- $_author 君不见，黄河之水天上来，奔流到海不复回。君不见，高堂明镜悲白发，朝如青丝暮成雪。人生得意须尽欢，莫使金樽空对月。天生我材必有用，千金散尽还复来。烹羊宰牛且为乐，会须一饮三百杯。',
      textAlign: TextAlign.end,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}
