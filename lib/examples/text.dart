/*
 * File: text.dart
 * -----
 * Description: 
 * -----
 * Created  By: Aim 2020-02-20 16:49:20
 * Modified By: Aim 2020-02-20 17:26:01
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return new Center(
    //   child: new Text(
    //     'Hello Aimin' * 2,
    //     textAlign: TextAlign.center,
    //     maxLines: 1,
    //     overflow: TextOverflow.ellipsis,
    //     textScaleFactor: 1.0,
    //     style: new TextStyle(
    //         color: Colors.blue,
    //         fontSize: 18.0,
    //         height: 1.2,
    //         fontFamily: 'Courier',
    //         background: new Paint()..color = Colors.yellow,
    //         decoration: TextDecoration.underline,
    //         decorationStyle: TextDecorationStyle.dashed),
    //   ),
    // );

    return Text.rich(TextSpan(
      children: [
        TextSpan(
          text: 'Home: '
        ),
        TextSpan(
          text: 'https://flutterchina.club',
          style: TextStyle(
            color: Colors.blue
          )
        )
      ]
    ));
  }
}
