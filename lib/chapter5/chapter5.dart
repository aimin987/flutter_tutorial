/*
 * File: chapter5.dart
 * -----
 * Description: 
 * -----
 * Created  By: Aim 2020-04-06 14:53:57
 * Modified By: Aim 2020-04-06 15:00:15
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/material.dart';

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
          children: <Widget>[],
        ),
      ),
    );
  }
}
