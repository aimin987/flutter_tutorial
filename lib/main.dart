import 'package:flutter/material.dart';
import 'package:flutter_tutorial/chapter.dart';
import 'package:flutter_tutorial/chapter11/chapter11.1.dart';
import 'package:flutter_tutorial/chapter11/chapter11.2.dart';
import 'package:flutter_tutorial/chapter11/chapter11.dart';
import 'package:flutter_tutorial/chapter4/chapter4.dart';
import 'package:flutter_tutorial/chapter5/chapter5.dart';
import 'package:flutter_tutorial/chapter6/chapter6.dart';
import 'package:flutter_tutorial/chapter7/chapter7.dart';
import 'package:flutter_tutorial/chapter8/chapter8.1.dart';
import 'package:flutter_tutorial/chapter8/chapter8.2.dart';
import 'package:flutter_tutorial/chapter8/chapter8.3.dart';
import 'package:flutter_tutorial/chapter8/chapter8.4.dart';
import 'package:flutter_tutorial/chapter8/chapter8.dart';
import 'package:flutter_tutorial/chapter9/chapter9.2.dart';
import 'package:flutter_tutorial/chapter9/chapter9.4.dart';
import 'package:flutter_tutorial/chapter9/chapter9.5.dart';
import 'package:flutter_tutorial/chapter9/chapter9.6.dart';
import 'package:flutter_tutorial/chapter9/chapter9.dart';

void main() => runApp(Test());

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '测试',
      routes: {
        '/': (context) => HomeRoute(),
        // 'switch_checkbox': (context) => SwitchAndCheckBoxRoute(),
        // 'textfield_form': (context) => TextFieldAndForm(),
        // 'row_column': (context) => RowAndColumn(),
        // 'wrap_flow': (context) => WarpAndFlowLayout()
        'chapter4': (context) => Chapter4(),
        'chapter5': (context) => Chapter5(),
        'chapter6': (context) => Chapter6(),
        'chapter7': (context) => Chapter7(),
        'chapter8': (context) => Chapter8(),
        'chapter8.1': (context) => Chapter81(),
        'chapter8.2': (context) => Chapter82(),
        'chapter8.3': (context) => Chapter83(),
        'chapter8.4': (context) => Chapter84(),
        'chapter9': (context) => Chapter9(),
        'chapter9.2': (context) => Chapter92(),
        'chapter9.4': (context) => Chapter94(),
        'chapter9.5': (context) => Chapter95(),
        'chapter9.6': (context) => Chapter96(),
        'chapter11': (context) => Chapter11(),
        'chapter11.1': (context) => Chapter111(),
        'chapter11.2': (context) => Chapter112(),
      },
    );
  }
}

// 主界面
class HomeRoute extends StatelessWidget {
  final List<Chapter> _chapters = [
    Chapter('第四章：布局类组件', 'chapter4'),
    Chapter('第五章：容器类组件', 'chapter5'),
    Chapter('第六章：可滚动组件', 'chapter6'),
    Chapter('第七章：功能型组件', 'chapter7'),
    Chapter('第八章：事件处理与通知', 'chapter8'),
    Chapter('第九章：动画', 'chapter9'),
    Chapter('第十一章：文件操作与网络请求', 'chapter11'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter实战'),
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
            return Divider(height: 1,);
          },
        ));
  }
}
