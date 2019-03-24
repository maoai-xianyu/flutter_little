import 'package:flutter/material.dart';
import '../model/post.dart';
import '../demo/post_demo.dart';

class ListViewDemo extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0), //外边距
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Image.network(
                      posts[index].imageUrl,
                      fit: BoxFit.cover,
                    ), //加载图片,
                  ),

                  SizedBox(height: 16.0), //空间高度
                  Text(posts[index].title,
                      style: Theme.of(context).textTheme.title),
                  Text(posts[index].author,
                      style: Theme.of(context).textTheme.subhead),
                  SizedBox(height: 16.0)
                ],
              ),
            ],
          ),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              // 渐变效果
              child: InkWell(
                splashColor: Colors.white.withOpacity(0.3),
                highlightColor: Colors.white.withOpacity(0.1),
                onTap: () {
                  debugPrint('渐变效果');
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => PostShow(
                            post: posts[index],
                          )));
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: posts.length, itemBuilder: _listItemBuilder);
  }
}
