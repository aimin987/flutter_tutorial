/*
 * File: layout_wrap.dart
 * -----
 * Description: 流式布局-Wrap
 * -----
 * Created  By: Aim 2020-03-29 20:22:17
 * Modified By: Aim 2020-03-29 20:29:22
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/material.dart';

class LayoutWrap extends StatelessWidget {
  const LayoutWrap({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text("流式布局-Wrap")),
        body: Wrap(
          spacing: 8.0,
          runSpacing: 4.0,
          alignment: WrapAlignment.center,
          children: <Widget>[
            new Chip(
              avatar: new CircleAvatar(
                  backgroundColor: Colors.blue, child: Text('A')),
              label: new Text('Hamilton'),
            ),
            new Chip(
              avatar: new CircleAvatar(
                  backgroundColor: Colors.blue, child: Text('M')),
              label: new Text('Lafayette'),
            ),
            new Chip(
              avatar: new CircleAvatar(
                  backgroundColor: Colors.blue, child: Text('H')),
              label: new Text('Mulligan'),
            ),
            new Chip(
              avatar: new CircleAvatar(
                  backgroundColor: Colors.blue, child: Text('J')),
              label: new Text('Laurens'),
            )
          ],
        ),
      ),
    );
  }
}
