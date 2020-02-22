/*
 * File: image.dart
 * -----
 * Description: 
 * -----
 * Created  By: Aim 2020-02-21 17:42:05
 * Modified By: Aim 2020-02-22 10:57:42
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image(
          image: AssetImage('images/avatar.png'),
          width: 100,
        ),
        Image.asset(
          'images/avatar.png',
          width: 64,
        ),
        Image.network(
          'https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png',
          width: 100,
        ),
        Image(
          image: NetworkImage(
              'https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png'),
        ),
        Text(
          '\uE914\uE000\uE90D\uE914\uE000\uE90D',
          style: TextStyle(
              fontFamily: 'MaterialIcons', fontSize: 24, color: Colors.green),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.accessible,
              color: Colors.green,
            ),
            Icon(
              Icons.error,
              color: Colors.green,
            ),
            Icon(
              Icons.fingerprint,
              color: Colors.green,
            ),
          ],
        )
      ],
    );
  }
}
