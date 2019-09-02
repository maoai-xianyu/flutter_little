import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
  List<String> _tags = ['apple', 'bannar', 'pear', 'wear'];
  String _action = "nothing";
  List<String> _selected = [];
  String _choice = "apple";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("chipdemo"),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: <Widget>[
                Chip(
                  label: Text('Life'),
                ),
                Chip(
                  label: Text('test'),
                  backgroundColor: Colors.orange,
                ),
                Chip(
                  label: Text('conding'),
                  avatar: CircleAvatar(
                    backgroundColor: Colors.grey,
                  ),
                ),
                Chip(
                  label: Text('conding'),
                  avatar: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://avatars3.githubusercontent.com/u/17868022?s=40&v=4"),
                    child: Text("坤"),
                  ),
                ),
                Chip(
                  label: Text('city'),
                  onDeleted: () {},
                  deleteIcon: Icon(Icons.delete),
                  deleteIconColor: Colors.redAccent,
                  deleteButtonTooltipMessage: 'Remove this tag',
                ),
                Divider(
                  color: Colors.grey,
                  height: 32,
                  indent: 32,
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag) {
                    return Chip(
                      label: Text(tag),
                      onDeleted: () {
                        setState(() {
                          _tags.remove(tag);
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.grey,
                  height: 32,
                  indent: 32,
                ),
                Container(
                  width: double.infinity,
                  child: Text('actionChip : $_action'),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag) {
                    return ActionChip(
                      label: Text(tag),
                      onPressed: () {
                        setState(() {
                          _action = tag;
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.grey,
                  height: 32,
                  indent: 32,
                ),
                Container(
                  width: double.infinity,
                  child: Text('FilterChip : ${_selected.toString()}'),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag) {
                    return FilterChip(
                      label: Text(tag),
                      selected: _selected.contains(tag),
                      onSelected: (value) {
                        setState(() {
                          if (_selected.contains(tag)) {
                            _selected.remove(tag);
                          } else {
                            _selected.add(tag);
                          }
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.grey,
                  height: 32,
                  indent: 32,
                ),
                Container(
                  width: double.infinity,
                  child: Text('ChoiceChip : $_choice'),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag) {
                    return ChoiceChip(
                      label: Text(tag),
                      selectedColor: Colors.orangeAccent,
                      selected: _choice == tag,
                      onSelected: (value) {
                        setState(() {
                          _choice = tag;
                        });
                      },
                    );  
                  }).toList(),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore),
        onPressed: () {
          setState(() {
            _tags = ['apple', 'bannar', 'pear', 'wear'];
            _selected = [];
            _choice = 'apple';
          });
        },
      ),
    );
  }
}
