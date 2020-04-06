/*
 * File: container_sized.dart
 * -----
 * Description: 5.4 变换
 * -----
 * Created  By: Aim 2020-04-06 21:04:29
 * Modified By: Aim 2020-04-06 21:40:09
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/material.dart';

class ContainerTransform extends StatelessWidget {
  const ContainerTransform({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('5.4 变换（Transform）'),
        ),
        body: Center(
          child: Container(
            color: Colors.black,
            child: Transform(
              alignment: Alignment.topRight,
              transform: Matrix4.skewY(0.3),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.deepOrange,
                child: Text('Aparment for rent!'),
              ),
            ),
          ),
        ));
  }
}
