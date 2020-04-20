/*
 * File: chapter8.2.dart
 * -----
 * Description: 8.2 手势识别
 * -----
 * Created  By: Aim 2020-04-19 20:17:34
 * Modified By: Aim 2020-04-20 10:00:57
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Chapter82 extends StatefulWidget {
  Chapter82({Key key}) : super(key: key);

  @override
  _Chapter82State createState() => _Chapter82State();
}

class _Chapter82State extends State<Chapter82> {
  String _operation = "No Gesture detected!";
  double _top = 0.0;
  double _left = 0.0;
  double _width = 200.0;

  TapGestureRecognizer _tapGestureRecognizer = new TapGestureRecognizer();
  bool _toggle = false;

  @override
  void dispose() {
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String _title = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      // body: Center(
      //   child: GestureDetector(
      //     child: Container(
      //       alignment: Alignment.center,
      //       color: Colors.blue,
      //       width: 200.0,
      //       height: 200.0,
      //       child: Text(
      //         _operation,
      //         style: TextStyle(color: Colors.white),
      //       ),
      //     ),
      //     onTap: () => updateText('Tap'),
      //     onDoubleTap: () => updateText('DoubleTap'),
      //     onLongPress: () => updateText('LongPress'),
      //   ),
      // ),

      // body: Stack(
      //   children: <Widget>[
      //     Positioned(
      //       top: _top,
      //       // left: _left,
      //       child: GestureDetector(
      //         child: CircleAvatar(
      //           child: Text('A'),
      //         ),
      //         onPanDown: (DragDownDetails e) {
      //           print("用户手指按下：${e.globalPosition}");
      //         },
      //         onPanUpdate: (DragUpdateDetails e) {
      //           setState(() {
      //             // _left += e.delta.dx;
      //             _top += e.delta.dy;
      //           });
      //         },
      //         onPanEnd: (DragEndDetails e) {
      //           print(e.velocity);
      //         },
      //       ),
      //     )
      //   ],
      // ),

      // body: Center(
      //   child: GestureDetector(
      //     child: Image.asset(
      //       'images/avatar.png',
      //       width: _width,
      //     ),
      //     onScaleUpdate: (ScaleUpdateDetails details) {
      //       setState(() {
      //         _width = 200 * details.scale.clamp(.8, 10.0);
      //       });
      //     },
      //   ),
      // ),

      body: Center(
        child: Text.rich(TextSpan(children: [
          TextSpan(text: "你好世界"),
           TextSpan(
                  text: "点我变色",
                  style: TextStyle(
                      fontSize: 30.0,
                      color: _toggle ? Colors.blue : Colors.red
                  ),
                  recognizer: _tapGestureRecognizer
                    ..onTap = () {
                      setState(() {
                        _toggle = !_toggle;
                      });
                    },
                ),
          TextSpan(text: "你好世界"),
        ])),
      ),
    );
  }

  // void updateText(String text) {
  //   setState(() {
  //     _operation = text;
  //   });
  // }
}
