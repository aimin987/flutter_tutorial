/*
 * File: layout_align.dart
 * -----
 * Description: 
 * -----
 * Created  By: Aim 2020-04-05 22:09:35
 * Modified By: Aim 2020-04-05 22:26:47
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/material.dart';

class LayoutAligin extends StatelessWidget {
  const LayoutAligin({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('对齐与相对定位-Align'),
      ),
      body: Container(
        height: 120.0,
        width: 120.0,
        color: Colors.blue[50],
        child: Align(
            // widthFactor: 2,
            // heightFactor: 2,
            // alignment: Alignment.topRight,
            // alignment: Alignment(2, 0),
            alignment: FractionalOffset(0.2, 0.6),
            child: FlutterLogo(
              size: 60,
            )),
      ),
    );
  }
}
