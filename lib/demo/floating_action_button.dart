import 'package:flutter/material.dart';

class FloatingActionButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget _floatingActionButton = FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.add),
      elevation: 0.0, //阴影效果不见，和下一层贴合
      backgroundColor: Colors.black87, //按钮的背景颜色
      // 改变形状
      /* shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ), */
    );

    // Extende 漂浮动作的按钮
    final Widget _floatingActionButtonExtended = FloatingActionButton.extended(
      onPressed: () {},
      icon: Icon(Icons.add),
      label: Text('Add'),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButtonDemo'),
        elevation: 0.0,
      ),
      floatingActionButton: _floatingActionButton,
      floatingActionButtonLocation: FloatingActionButtonLocation
          .centerDocked, // 和bottomNavigationBar契合，缺口
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80.0,
        ),
        // 和 floatingActionButtonLocation 的缺口
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}
