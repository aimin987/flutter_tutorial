/*
 * File: chapter7.dart
 * -----
 * Description: 第7章 功能型组件
 * -----
 * Created  By: Aim 2020-04-08 17:44:24
 * Modified By: Aim 2020-04-08 17:59:55
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */


import 'package:flutter/material.dart';
import 'package:flutter_tutorial/chapter7/func_willpopscope.dart';

class Chapter7 extends StatelessWidget {
  const Chapter7({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('第七章：功能型组件'),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(minWidth: double.infinity),
        child: Column(
          children: <Widget>[
            FlatButton(
              child: Text("7.1 导航返回拦截"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FuncWillPopScop();
                }));
              },
            ),
           
     
          ],
        ),
      ),
    );
  }
}

