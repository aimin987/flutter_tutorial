/*
 * File: material_widget.dart
 * -----
 * Description: 使用 Material 组件
 * -----
 * Created  By: Aim 2020-02-18 10:58:27
 * Modified By: Aim 2020-02-21 17:43:53
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */


import 'package:flutter/material.dart';
import 'package:flutter_tutorial/examples/button.dart';
import 'package:flutter_tutorial/examples/image.dart';
import 'package:flutter_tutorial/examples/text.dart';

class MaterialWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(icon: new Icon(Icons.menu), onPressed: null),
        title: new Text('Example title'),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.search), onPressed: null)
        ],
      ),
      body: ImageWidget(),

      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        onPressed: null
        ),
    );
  }
  

}