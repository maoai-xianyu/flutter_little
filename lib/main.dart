import 'package:flutter/material.dart';
import 'demo/drawer_demo.dart';
import 'demo/bottom_navigation_bar_demo.dart';
import 'demo/listview_demo.dart';
import 'demo/basic_demo.dart';
import 'demo/layout_demo.dart';
import 'demo/view_demo.dart';
import 'demo/sliver_demo.dart';
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
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
          primarySwatch: Colors.yellow, // 主题的主要颜色
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5)), // 高亮颜色
      //splashColor: Colors.white70,
    );
  }
}

/**
 * 使用标签展示内容,需要三样东西
 * 1. Tab
 * 2. TabBar 标签栏
 * 3. TabView 标签视图
 * 4. TabControllor 标签的控制器，控制按的是那个标签，打开的是那个标签视图
 */
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          // 标题左边,设置抽屉，默认会加上
          /* leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation',
            onPressed: () => debugPrint('Navigation is onPress.'),
          ), */
          title: Text('coding type'), // 标题
          // 标题右边
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('Search is onPress.'),
            ),
          ],
          elevation: 0.0, // 阴影 0.0  默认是 4.0
          // 标题底部添加TabBar
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
              Tab(icon: Icon(Icons.view_quilt)),
            ],
          ),
        ),
        // 标签的内容显示在TabBarView
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            //Icon(Icons.local_florist, size: 128.0, color: Colors.black12),
            BasicDemo(),
            //Icon(Icons.change_history, size: 128.0, color: Colors.black12),
            LayoutDemo(),
            //Icon(Icons.directions_bike, size: 128.0, color: Colors.black12),
            SliverDemo(),
            //Icon(Icons.view_quilt, size: 128.0, color: Colors.black12),
          ],
        ),
        // 左边抽屉布局 右边的是endDrawer,里面一般用Drawer 部件
        drawer: DrawerDemo(),
        // 底部导航栏
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}
