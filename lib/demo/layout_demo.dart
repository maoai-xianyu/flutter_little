import 'package:flutter/material.dart';

// 创建LayoutDemo 的小部件
class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    // return IconBadge(Icons.pool);
    // return RowDemo();
    // return ColumnDemo();
    // return MainAxisDemo();
    // return CrossAxisDemo();
    // return SizeBoxDemo();
    // return AlignmentDemo();
    // return StackDemo();
    // return AspectRatioDemo();
    return ConstrainedBoxDemo();
  }
}

// ConstrainedBox 带限制的盒子
class ConstrainedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 200.0,
              maxWidth: 200.0
            ),
            child: Container(
              color: Color.fromRGBO(3, 54, 255, 1.0),
            ),
          ),
        ],
      ),
    );
  }
}

// aspectRatio 宽高比
class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 16.0 / 9.0,
            child: Container(
              color: Color.fromRGBO(3, 54, 255, 1.0),
            ),
          )
        ],
      ),
    );
  }
}

// stack 一摞小部件
class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Stack(
            alignment: Alignment.topLeft,
            children: <Widget>[
              SizedBox(
                width: 200.0,
                height: 300.0,
                child: Container(
                  alignment: Alignment(1.0, 1.0),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              SizedBox(
                height: 32.0,
              ),
              SizedBox(
                width: 100.0,
                height: 100.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                    shape: BoxShape.circle,
                    gradient: RadialGradient(
                      colors: [
                        Color.fromRGBO(7, 102, 255, 1.0),
                        Color.fromRGBO(3, 54, 255, 1.0),
                      ],
                    ),
                  ),
                  child: Icon(
                    Icons.brightness_2,
                    color: Colors.white,
                    size: 32.0,
                  ),
                ),
              ),
              // Positioned 可以设置具体的位置
              Positioned(
                right: 20.0,
                top: 20.0,
                child: Icon(
                  Icons.ac_unit,
                  color: Colors.white,
                  size: 32.0,
                ),
              ),
              Positioned(
                right: 30.0,
                top: 60.0,
                child: Icon(
                  Icons.ac_unit,
                  color: Colors.white,
                  size: 32.0,
                ),
              ),
              Positioned(
                right: 50.0,
                top: 100.0,
                child: Icon(
                  Icons.ac_unit,
                  color: Colors.white,
                  size: 32.0,
                ),
              ),
              Positioned(
                right: 80.0,
                top: 200.0,
                child: Icon(
                  Icons.ac_unit,
                  color: Colors.white,
                  size: 32.0,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

// Alignment 对齐 矩形里面的某一个点
class AlignmentDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 200.0,
            height: 300.0,
            child: Container(
              //alignment: Alignment(1.0, 1.0), //  Alignment(0.0, 0.0) 正中间 (1.0, 0.0) 右边 (-1.0, 0.0)左边
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Icon(
                Icons.ac_unit,
                color: Colors.white,
                size: 32.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// sizeBox 固定尺寸的盒子,可以用作是界面的间隔
class SizeBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 200.0,
            height: 300.0,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Icon(
                Icons.ac_unit,
                color: Colors.white,
                size: 32.0,
              ),
            ),
          ),
          SizedBox(
            height: 32.0,
          ),
          SizedBox(
            width: 100.0,
            height: 100.0,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Icon(
                Icons.brightness_2,
                color: Colors.white,
                size: 32.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// 交叉轴
class CrossAxisDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          IconBadge(Icons.pool),
          IconBadge(
            Icons.beach_access,
            size: 64.0,
          ),
          IconBadge(Icons.airplanemode_active),
        ],
      ),
    );
  }
}

// 主轴Row 是横着 左到右   column 是竖着
class MainAxisDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconBadge(Icons.pool),
          IconBadge(Icons.beach_access),
          IconBadge(Icons.airplanemode_active),
        ],
      ),
    );
  }
}

// Row(横排) 与 column(竖排)  FlexBox布局方法

class ColumnDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: <Widget>[
          IconBadge(Icons.pool),
          IconBadge(Icons.beach_access),
          IconBadge(Icons.airplanemode_active),
        ],
      ),
    );
  }
}

class RowDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Row(
        children: <Widget>[
          IconBadge(Icons.pool),
          IconBadge(Icons.beach_access),
          IconBadge(Icons.airplanemode_active),
        ],
      ),
    );
  }
}

// 创建可以配置的图片绘制（IconBadge）小部件
class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}
