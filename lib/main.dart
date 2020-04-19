import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_tutorial/chapter4/chapter4.dart';
import 'package:flutter_tutorial/chapter5/chapter5.dart';
import 'package:flutter_tutorial/chapter6/chapter6.dart';
import 'package:flutter_tutorial/chapter7/chapter7.dart';
import 'package:flutter_tutorial/chapter8/chapter8.1.dart';
import 'package:flutter_tutorial/chapter8/chapter8.2.dart';

import 'chapter8/chapter8.dart';

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
      },
    );
  }
}

// 主界面
class HomeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter实战'),
        ),
        body: ConstrainedBox(
            constraints: BoxConstraints(minWidth: double.infinity),
            child: Column(
              children: <Widget>[
                FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'chapter4');
                    },
                    child: Text('第四章：布局类组件')),
                FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'chapter5');
                    },
                    child: Text('第五章：容器类组件')),
                FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'chapter6');
                    },
                    child: Text('第六章：可滚动组件')),
                FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'chapter7');
                    },
                    child: Text('第七章：功能型组件')),
                FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'chapter8');
                    },
                    child: Text('第八章 事件处理与通知')),
              ],
            )));
  }
}
