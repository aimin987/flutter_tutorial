/*
 * File: chapter11.2.dart
 * -----
 * Description: 
 * -----
 * Created  By: Aim 2020-04-23 17:54:49
 * Modified By: Aim 2020-04-23 17:57:20
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */


import 'package:flutter/material.dart';

class Chapter112 extends StatefulWidget {
  Chapter112({Key key}) : super(key: key);

  @override
  _Chapter112State createState() => _Chapter112State();
}

class _Chapter112State extends State<Chapter112> {
  @override
  Widget build(BuildContext context) {
    final title = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}