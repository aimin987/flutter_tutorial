/*
 * File: chapter9.3.dart
 * -----
 * Description: 
 * -----
 * Created  By: Aim 2020-04-20 19:29:06
 * Modified By: Aim 2020-04-20 19:31:33
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/material.dart';

class Chapter93 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("9.3 自定义路由切换动画"),
      ),
      body: Center(
        child: Image.asset('images/avatar.png'),
      ),
    );
  }
}
