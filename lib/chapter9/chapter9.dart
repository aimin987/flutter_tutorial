/*
 * File: chapter9.dart
 * -----
 * Description: 第九章：动画
 * -----
 * Created  By: Aim 2020-04-20 15:18:35
 * Modified By: Aim 2020-04-20 19:53:31
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/chapter9/chapter9.3.dart';

import '../chapter.dart';

class Chapter9 extends StatelessWidget {
  // final List<String> _titles = [
  //   '8.1：原始指针事件处理',
  // ];

  final List<Chapter> _chapters = [
    Chapter('9.2 动画基本结构及状态监听', 'chapter9.2'),
    Chapter('9.3 自定义路由切换动画', 'chapter9.3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第九章：动画'),
      ),
      body: ListView.separated(
        itemCount: _chapters.length,
        itemBuilder: (BuildContext context, index) {
          return ListTile(
            title: Text(_chapters[index].title),
            onTap: () {
              if (index == 1) {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        transitionDuration: Duration(milliseconds: 500),
                        pageBuilder: (BuildContext context, Animation animation,
                            Animation secondaryAnimation) {
                          return FadeTransition(
                            opacity: animation,
                            child: Chapter93(),
                          );
                        }));
              } else {
                Navigator.of(context).pushNamed(_chapters[index].route,
                    arguments: _chapters[index].title);
              }
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

// 西江月
// 
