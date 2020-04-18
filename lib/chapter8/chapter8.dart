import 'package:flutter/material.dart';

class Chapter8 extends StatelessWidget {
  // const Chapter8({Key key}) : super(key: key);

  final List<String> _titles = [
    '8.1：原始指针事件处理'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第八章 事件处理与通知'),
      ),
      body: ListView.separated(
        itemCount: _titles.length,
        itemBuilder: (BuildContext context, index) {
          return ListTile(
            title: Text(_titles[index]),
            onTap: () {
              Navigator.of(context).pushNamed('chapter8.${index + 1}', arguments: _titles[index]);
            },
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
      ),
    );
  }
}
