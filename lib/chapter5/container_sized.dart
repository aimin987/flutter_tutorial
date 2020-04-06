/*
 * File: container_sized.dart
 * -----
 * Description: 5.2 尺寸限制类容器
 * -----
 * Created  By: Aim 2020-04-06 21:04:29
 * Modified By: Aim 2020-04-06 21:40:09
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/material.dart';

class ContaienrSized extends StatelessWidget {
  const ContaienrSized({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget redBox = DecoratedBox(decoration: BoxDecoration(color: Colors.red));

    return Scaffold(
      appBar: AppBar(
        title: Text('5.2 尺寸限制类容器'),
      ),
      //  ConstrainedBox
      // body: ConstrainedBox(
      //   constraints: BoxConstraints(
      //     minWidth: double.infinity,
      //     minHeight: 50.0,
      //   ),
      //   child: Container(
      //     height: 5.0,
      //     child: redBox,
      //   )),

      // 5.2.2 SizedBox
      // body: SizedBox(
      //   width: 80.0,
      //   height: 80.0,
      //   child: redBox,
      // ),

      // 5.2.3 多重限制
      // body: ConstrainedBox(
      //     constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0), //父
      //     child: ConstrainedBox(
      //       constraints: BoxConstraints(minWidth: 60.0, minHeight: 60.0), //子
      //       child: redBox,
      //     )),

      body: ConstrainedBox(
          constraints: BoxConstraints(minWidth: 60.0, minHeight: 100.0), //父
          child: UnconstrainedBox(
            //“去除”父级限制
            child: ConstrainedBox(
              constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0), //子
              child: redBox,
            ),
          )),
    );
  }
}
