import 'package:flutter/material.dart';

class ExpansionPanelItem {
  final String title;
  final Widget body;
  bool isExpanded;

  ExpansionPanelItem({
    this.title,
    this.body,
    this.isExpanded,
  });
}

class ExpansionPanelDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ExpansionPanelDemoState();
  }
}

class _ExpansionPanelDemoState extends State<ExpansionPanelDemo> {
  List<ExpansionPanelItem> expanionsPanleItems = [];

  @override
  void initState() {
    super.initState();
    debugPrint('----------');
    expanionsPanleItems = List<ExpansionPanelItem>.generate(4, (i) {
      return ExpansionPanelItem(
        title: 'Panel $i',
        body: Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          child: Text('Content for panel $i'),
        ),
        isExpanded: false,
      );
    });

    // expanionsPanleItems = <ExpansionPanelItem>[
    //   ExpansionPanelItem(
    //     title: 'Panel A',
    //     body: Container(
    //       padding: EdgeInsets.all(16.0),
    //       width: double.infinity,
    //       child: Text('Content for panel A'),
    //     ),
    //     isExpanded: false,
    //   ),
    //   ExpansionPanelItem(
    //     title: 'Panel B',
    //     body: Container(
    //       padding: EdgeInsets.all(16.0),
    //       width: double.infinity,
    //       child: Text('Content for panel A'),
    //     ),
    //     isExpanded: false,
    //   ),
    //   ExpansionPanelItem(
    //     title: 'Panel C',
    //     body: Container(
    //       padding: EdgeInsets.all(16.0),
    //       width: double.infinity,
    //       child: Text('Content for panel A'),
    //     ),
    //     isExpanded: false,
    //   ),
    // ];

    debugPrint('item ${expanionsPanleItems.length}');
    expanionsPanleItems.forEach((item) {
      debugPrint('item ${item.title}');
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpansionPanelDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // 收缩面板
            ExpansionPanelList(
              expansionCallback: (int panelIndex, bool isExpanded) {
                //panelIndex 索引号
                setState(() {
                  expanionsPanleItems[panelIndex].isExpanded = !isExpanded;
                });
              },
              children: expanionsPanleItems.map(
                (ExpansionPanelItem item) {
                  return ExpansionPanel(
                    body: item.body,
                    isExpanded: item.isExpanded,
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return Container(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          '${item.title}',
                          style: Theme.of(context).textTheme.title,
                        ),
                      );
                    },
                  );
                },
              ).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
