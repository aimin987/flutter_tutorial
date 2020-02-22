/*
 * File: switch_checkbox.dart
 * -----
 * Description: 单选复选按钮
 * -----
 * Created  By: Aim 2020-02-22 11:04:04
 * Modified By: Aim 2020-02-22 13:57:41
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/material.dart';

class SwitchAndCheckBoxRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('单选框和复选框'),
      ),
      body: SwitchAndCheckBoxBody(),
    );
  }
}

class SwitchAndCheckBoxBody extends StatefulWidget {
  @override
  _SwitchAndCheckBoxBodyState createState() {
    return _SwitchAndCheckBoxBodyState();
  }
}

class _SwitchAndCheckBoxBodyState extends State<SwitchAndCheckBoxBody> {
  bool _switchSelected = true;
  bool _checkboxSelected = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Switch(
            value: _switchSelected,
            onChanged: (value) {
              setState(() {
                _switchSelected = value;
              });
            }),
        Checkbox(
            value: _checkboxSelected,
            activeColor: Colors.red,
            onChanged: (value) {
              setState(() {
                _checkboxSelected = value;
              });
            })
      ],
    );
  }
}
