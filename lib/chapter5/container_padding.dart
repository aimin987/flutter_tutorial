/*
 * File: container_padding.dart
 * -----
 * Description: 填充（Padding）
 * -----
 * Created  By: Aim 2020-04-06 15:04:50
 * Modified By: Aim 2020-04-06 21:02:07
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/material.dart';

class ContainerPadding extends StatelessWidget {
  const ContainerPadding({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('5.1 填充（Padding）'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text('Hello world'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text('I am Aim'),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: Text('Your friend'),
              )
            ],
          ),
        ));
  }
}
