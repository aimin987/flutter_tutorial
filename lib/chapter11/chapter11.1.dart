/*
 * File: chapter11.1.dart
 * -----
 * Description: 
 * -----
 * Created  By: Aim 2020-04-23 17:54:40
 * Modified By: Aim 2020-04-23 17:56:06
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */


import 'package:flutter/material.dart';

class Chapter111 extends StatefulWidget {
  Chapter111({Key key}) : super(key: key);

  @override
  _Chapter111State createState() => _Chapter111State();
}

class _Chapter111State extends State<Chapter111> {
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