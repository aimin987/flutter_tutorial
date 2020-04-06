/*
 * File: chapter5.dart
 * -----
 * Description: 
 * -----
 * Created  By: Aim 2020-04-06 14:53:57
 * Modified By: Aim 2020-04-06 21:31:27
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/chapter5/container_decoratedbox.dart';
import 'package:flutter_tutorial/chapter5/container_padding.dart';
import 'package:flutter_tutorial/chapter5/container_sized.dart';

class Chapter5 extends StatelessWidget {
  const Chapter5({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第五章：容器类组件'),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(minWidth: double.infinity),
        child: Column(
          children: <Widget>[
            FlatButton(
              child: Text("5.1 填充（Padding）"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ContainerPadding();
                }));
              },
            ),
            FlatButton(
              child: Text("5.2 尺寸限制类容器"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ContaienrSized();
                }));
              },
            ),
             FlatButton(
              child: Text("5.3 装饰容器DecoratedBox"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ContainerDecoratedBox();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
