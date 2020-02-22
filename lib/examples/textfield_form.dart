/*
 * File: textfield_form.dart
 * -----
 * Description: 输入框及表单
 * -----
 * Created  By: Aim 2020-02-22 14:05:23
 * Modified By: Aim 2020-02-22 15:16:56
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/material.dart';

class TextFieldAndForm extends StatelessWidget {
  TextEditingController _usernameController = TextEditingController();
  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  FocusScopeNode focusScopeNode;

  @override
  Widget build(BuildContext context) {
    // _usernameController.text = 'Hello wrold';
    // _usernameController.selection = TextSelection(
    //     baseOffset: 2, extentOffset: _usernameController.text.length);

    return Scaffold(
        appBar: AppBar(
          title: Text('输入框及表单'),
        ),
        body: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            children: <Widget>[
              TextField(
                autofocus: true,
                decoration: InputDecoration(
                    labelText: 'Username',
                    hintText: 'Username or emil',
                    prefixIcon: Icon(Icons.person)),
                // controller: _usernameController,
                onChanged: (value) {
                  print("Username on change: $value");
                },
                focusNode: focusNode1,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Please input your password',
                    prefixIcon: Icon(Icons.lock)),
                obscureText: true,
                focusNode: focusNode2,
              ),
              Builder(builder: (ctx) {
                return Column(
                  children: <Widget>[
                    RaisedButton(
                        child: Text('Move focus'),
                        onPressed: () {
                          if (null == focusScopeNode) {
                            focusScopeNode = FocusScope.of(ctx);
                          }
                          focusScopeNode.requestFocus(focusNode2);
                        }),
                    RaisedButton(
                        child: Text('Hide keyboard'),
                        onPressed: () {
                          focusNode1.unfocus();
                          focusNode2.unfocus();
                        })
                  ],
                );
              })
            ],
          ),
        ));
  }
}
