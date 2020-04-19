/*
 * File: chapter8.1.dart
 * -----
 * Description: 8.1 原始指针事件处理
 * -----
 * Created  By: Aim 2020-04-19 10:28:33
 * Modified By: Aim 2020-04-19 20:20:14
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/material.dart';

class Chapter81 extends StatefulWidget {
  const Chapter81({Key key}) : super(key: key);

  @override
  _Chapter81State createState() => _Chapter81State();
}

class _Chapter81State extends State<Chapter81> {
  PointerEvent _event;

  @override
  Widget build(BuildContext context) {
    String _title = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      // body: Listener(
      //   child: Container(
      //     alignment: Alignment.center,
      //     color: Colors.blue,
      //     width: 300.0,
      //     height: 150.0,
      //     child: Text(
      //       _event?.toString() ?? "无",
      //       style: TextStyle(color: Colors.white),
      //     ),
      //   ),
      //   onPointerDown: (PointerDownEvent event) => setState(() {
      //     _event = event;
      //   }),
      //   onPointerMove: (PointerMoveEvent event) => setState(() {
      //     _event = event;
      //   }),
      //   onPointerUp: (PointerUpEvent event) => setState(() {
      //     _event = event;
      //   }),
      // ),

      // body: Listener(
      //   child: ConstrainedBox(
      //     constraints: BoxConstraints.tight(Size(300, 150)),
      //     child: Center(
      //       child: Text('Box A'),
      //     ),
      //   ),
      //   // behavior: HitTestBehavior.opaque,
      //   onPointerDown: (event) => print('Down A'),
      // ),

      // body: Stack(
      //   children: <Widget>[
      //     Listener(
      //       child: ConstrainedBox(
      //         constraints: BoxConstraints.tight(Size(300.0, 200.0)),
      //         child:
      //             DecoratedBox(decoration: BoxDecoration(color: Colors.blue)),
      //       ),
      //       onPointerDown: (event) => print('down0'),
      //     ),
      //     Listener(
      //       child: ConstrainedBox(
      //           constraints: BoxConstraints.tight(Size(200.0, 100.0)),
      //           child: Center(
      //             child: Text("左上角200*100范围内非文本区域点击"),
      //           )),
      //       onPointerDown: (event) => print('down1'),
      //       behavior: HitTestBehavior.translucent,
      //     )
      //   ],
      // ),

      body: Listener(
        child: AbsorbPointer(
          child: Listener(
            child: Container(
              color: Colors.red,
              width: 200.0,
              height: 100.0,
            ),
            onPointerDown: (event) => print('in'),
          ),
        ),
        onPointerDown: (event) => print('up'),
      ),
    );
  }
}
