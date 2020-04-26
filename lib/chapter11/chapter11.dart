/*
 * File: chapter11.dart
 * -----
 * Description: 
 * -----
 * Created  By: Aim 2020-04-23 17:44:41
 * Modified By: Aim 2020-04-24 13:25:45
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/chapter.dart';

class Chapter11 extends StatelessWidget {
  const Chapter11({Key key}) : super(key: key);

  static const _chapters = [
    Chapter('11.1 文件操作', 'chapter11.1'),
    Chapter('11.2 通过HttpClient发起HTTP请求', 'chapter11.2'),
    Chapter('11.3 Http请求-Dio http库', 'chapter11.3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第十一章：文件操作与网络请求'),
      ),
      body: ListView.separated(
        itemCount: _chapters.length,
        itemBuilder: (BuildContext context, index) {
          return ListTile(
            title: Text(_chapters[index].title),
            onTap: () {
              Navigator.of(context).pushNamed(_chapters[index].route,
                  arguments: _chapters[index].title);
            },
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            height: 1,
          );
        },
      ),
    );
  }
}
