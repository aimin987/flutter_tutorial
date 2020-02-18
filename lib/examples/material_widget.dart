/*
 * File: material_widget.dart
 * -----
 * Description: 使用 Material 组件
 * -----
 * Created  By: Aim 2020-02-18 10:58:27
 * Modified By: Aim 2020-02-18 11:12:51
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */


import 'package:flutter/material.dart';

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
      body: new Center(
        child: new Text('Hello world'),
      ),

      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        onPressed: null
        ),
    );
  }
  

}