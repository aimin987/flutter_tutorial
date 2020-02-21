/*
 * File: image.dart
 * -----
 * Description: 
 * -----
 * Created  By: Aim 2020-02-21 17:42:05
 * Modified By: Aim 2020-02-21 18:03:10
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
          'https://avatars2.githubusercontent.com/u/20411648?s=460&v=4',
          width: 100,
        )
      ],
    );
  }
}
