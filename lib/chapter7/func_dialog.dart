/*
 * File: func_dialog.dart
 * -----
 * Description: 7.6 对话框详解
 * -----
 * Created  By: Aim 2020-04-18 21:08:54
 * Modified By: Aim 2020-04-18 21:21:40
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/material.dart';

Future<bool> showDeleteConfirmDialog1(BuildContext context) {
  return showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('提示'),
          content: Text('确定要删除当前文件吗?'),
          actions: <Widget>[
            FlatButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('取消'),
            ),
            FlatButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: Text('删除'),
            ),
          ],
        );
      });
}

class FuncDialog extends StatelessWidget {
  const FuncDialog({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('7.6 对话框详解')),
        body: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('对话框1'),
              onPressed: () async {
                bool delete = await showDeleteConfirmDialog1(context);
                if (delete == null) {
                  print('取消');
                } else {
                  print('删除');
                }
              },
            ),
          ],
        ));
  }
}
