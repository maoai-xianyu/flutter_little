import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  // 获取变量 $
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ContainerDemo();
  }
}

// 容器 和 装饰容器
class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      //color: Colors.grey[100],
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://timgsa.baidu.com/timg?image&quality=80&size=b10000_10000&sec=1551581454&di=5892d496faa80ab30acefe701c117a96&src=http://pic.58pic.com/58pic/16/83/80/16J58PICXdP_1024.jpg'),
          alignment: Alignment.topCenter,
          //repeat: ImageRepeat.repeatY
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
              Colors.indigoAccent[400].withOpacity(0.5), BlendMode.hardLight),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, //主轴居中
        children: <Widget>[
          Container(
            child: Icon(
              Icons.pool,
              size: 32.0,
              color: Colors.white,
            ),
            //color: Color.fromRGBO(3, 54, 255, 1.0),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            //设置盒子的装饰
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              /* border: Border(
                  // 上边框
                  top: BorderSide(
                    color: Colors.indigoAccent[100],
                    width: 3.0,
                    style: BorderStyle.solid,
                  ),
                  // 下边框
                  bottom: BorderSide(
                    color: Colors.indigoAccent[100],
                    width: 3.0,
                    style: BorderStyle.solid,
                  )), */
              // 四个边框
              border: Border.all(
                color: Colors.indigoAccent[100],
                width: 3.0,
                style: BorderStyle.solid,
              ),
              // 圆角
              /*  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(64.0),
                    bottomLeft: Radius.circular(64.0)), */
              // 圆角和圆形不能同时存在
              //borderRadius: BorderRadius.circular(16.0),
              // 阴影效果
              boxShadow: [
                BoxShadow(
                  // 阴影偏移 x轴 y轴,
                  offset: Offset(6.0, 7.0),
                  // 默认是黑色
                  color: Color.fromRGBO(16, 20, 188, 1.0),
                  // 模糊度，值越大，模糊越大
                  blurRadius: 1.0,
                  // 阴影扩散，正数大，负数小
                  spreadRadius: 0.1,
                )
              ],
              // 改变盒子的形状
              shape: BoxShape.circle,
              // 渐变效果:镜像渐变
              /*  gradient: RadialGradient(colors: [
                Color.fromRGBO(7, 102, 255, 1.0),
                Color.fromRGBO(3, 28, 128, 1.0),
              ]), */
              // 渐变效果:线性渐变
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 28, 128, 1.0),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          )
        ],
      ),
    );
  }
}

// 行内多样式的文字
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
                text: '@coding',
                style: TextStyle(
                  fontSize: 17.0,
                  color: Colors.grey,
                )),
            TextSpan(
                text: '.net',
                style: TextStyle(
                  fontSize: 17.0,
                  color: Colors.grey,
                )),
          ]),
    );
  }
}

// 文字和文字样式
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
