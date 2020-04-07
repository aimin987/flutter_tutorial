/*
 * File: scroll_singlechild.dart
 * -----
 * Description: 
 * -----
 * Created  By: Aim 2020-04-07 15:59:49
 * Modified By: Aim 2020-04-07 16:05:24
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/material.dart';

class ScrollSingleChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String str = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    return Scaffold(
      appBar: AppBar(
        title: Text('6.2 SingleChildScrollView'),
      ),
      body: Scrollbar(
          child: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
              children: str
                  .split('')
                  .map((c) => Text(
                        c,
                        textScaleFactor: 2.0,
                      ))
                  .toList()),
        ),
      )),
    );
  }
}
