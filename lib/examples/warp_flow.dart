/*
 * File: warp_flow.dart
 * -----
 * Description: 
 * -----
 * Created  By: Aim 2020-02-29 23:00:29
 * Modified By: Aim 2020-02-29 23:11:42
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WarpAndFlowLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('流式布局'),
      ),
      body: Wrap(
        spacing: 8.0,
        runSpacing: 4.0,
        alignment: WrapAlignment.center,
        children: <Widget>[
          Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('A'),
              ),
              label: Text('Hamilton')),
          Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('B'),
              ),
              label: Text('Lafayette')),
          Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('C'),
              ),
              label: Text('Mulligan')),
          Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('D'),
              ),
              label: Text('Laurens'))
        ],
      ),
    );
  }
}
