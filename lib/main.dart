import 'package:flutter/material.dart';
/* void main(){
  runApp(App());
} */

void main() => runApp(App());

// 自定义的小部件是一个类
// 1. 继承 sfw StatefulWidget 需要修改数据的的小部件
// 2. 继承 ssw StatelessWidget 不需要修改数据的小部件


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Home(),
      theme: ThemeData(primarySwatch: Colors.yellow // 主题的主要颜色
          ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('coding type'), // 标题
        elevation: 0.0, // 阴影 0.0  默认是 4.0
      ),
      body: Hello(),
    );
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
        'hello',
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.black87),
      ),
    );
  }
}
