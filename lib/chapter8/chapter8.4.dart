/*
 * File: chapter8.4.dart
 * -----
 * Description: 8.4 Notification
 * -----
 * Created  By: Aim 2020-04-20 13:44:43
 * Modified By: Aim 2020-04-20 14:18:09
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/material.dart';

class Chapter84 extends StatefulWidget {
  @override
  _Chapter84State createState() => _Chapter84State();
}

class _Chapter84State extends State<Chapter84> {
  String _msg = '';
  @override
  Widget build(BuildContext context) {
    String _title = ModalRoute.of(context).settings.arguments;
    return Scaffold(
        appBar: AppBar(
          title: Text(_title),
        ),
        body: NotificationListener<MyNotification>(
          onNotification: (notification) {
            setState(() {
              _msg += notification.msg + ' ';
            });
            return true;
          },
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Builder(builder: (context) {
                  return RaisedButton(
                    onPressed: () => MyNotification('Hi').dispatch(context),
                    child: Text('Send Notification'),
                  );
                }),
                Text(_msg)
              ],
            ),
          ),
        ));
  }
}

class MyNotification extends Notification {
  MyNotification(this.msg);
  final String msg;
}
