/*
 * File: chapter8.dart
 * -----
 * Description: 事件处理与通知
 * -----
 * Created  By: Aim 2020-04-19 10:28:33
 * Modified By: Aim 2020-04-20 13:42:32
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/material.dart';

class Chapter8 extends StatelessWidget {
  // const Chapter8({Key key}) : super(key: key);

  final List<String> _titles = [
    '8.1：原始指针事件处理',
    '8.2 手势识别',
    '8.3 事件总线',
    '8.4 Notification',
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
              Navigator.of(context).pushNamed('chapter8.${index + 1}',
                  arguments: _titles[index]);
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
