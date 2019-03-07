import 'package:flutter/material.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageViewDemo();
  }
}

/**
 * 页面视图 PageView  
 * 1. 页面视图的属性
 * 2. 使用PageController调整页面
 * */ 
class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PageView(
      // pageSnapping 拖动是否沉降 true 未沉降
      //pageSnapping: false,
      // 倒置
      //reverse: true,
      // 水平或者垂直滚动
      //scrollDirection: Axis.vertical,
      // 页面在可视口的中间显示后会触发回调
      onPageChanged: (currentPage) => debugPrint('Page: $currentPage'),

      controller: PageController(
        initialPage: 1,
        // 是否记录用户滚动到那一个页面
        keepPage: false,
        // 页面占用可视口的比例
        viewportFraction: 0.85,

      ),

      children: <Widget>[
        Container(
          color: Colors.brown[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'ONE',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.grey[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'TWO',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
         Container(
          color: Colors.blueGrey[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'THREE',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        )
      ],
    );
  }
}
