/*
 * File: func_willpopscope.dart
 * -----
 * Description: 7.1 导航返回拦截
 * -----
 * Created  By: Aim 2020-04-08 17:51:52
 * Modified By: Aim 2020-04-08 18:05:22
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/material.dart';

class FuncWillPopScop extends StatefulWidget {
  @override
  _FuncWillPopScopState createState() => _FuncWillPopScopState();
}

class _FuncWillPopScopState extends State<FuncWillPopScop> {
  DateTime _lastPressAt;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          appBar: AppBar(
            title: Text('7.1 导航返回拦截'),
          ),
          body: Container(
            alignment: Alignment.center,
            child: Text('1秒内连续按两次返回键退出'),
          ),
        ),
        onWillPop: () async {
          if (_lastPressAt == null ||
              DateTime.now().difference(_lastPressAt) > Duration(seconds: 1)) {
            _lastPressAt = DateTime.now();
            return false;
          }
          return true;
        });
  }
}
