/*
 * File: chapter9.4.dart
 * -----
 * Description: 9.4 Hero动画
 * -----
 * Created  By: Aim 2020-04-20 20:00:17
 * Modified By: Aim 2020-04-20 20:12:28
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/material.dart';

class Chapter94 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var title = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: InkWell(
          child: Hero(
              tag: 'avatar',
              child: ClipOval(
                child: Image.asset(
                  'images/avatar.png',
                  width: 50,
                ),
              )),
          onTap: () {
            Navigator.push(context, PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) {
              return FadeTransition(opacity: animation, child: Chapter94B());
            }));
          },
        ),
      ),
    );
  }
}

class Chapter94B extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第二页"),
      ),
      body: Center(
        child: Hero(
          tag: 'avatar',
          child: Image.asset(
            'images/avatar.png',
          ),
        ),
      ),
    );
  }
}
