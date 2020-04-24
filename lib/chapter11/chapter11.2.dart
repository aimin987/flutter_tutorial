/*
 * File: chapter11.2.dart
 * -----
 * Description: 
 * -----
 * Created  By: Aim 2020-04-23 17:54:49
 * Modified By: Aim 2020-04-24 11:20:29
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

class Chapter112 extends StatefulWidget {
  Chapter112({Key key}) : super(key: key);

  @override
  _Chapter112State createState() => _Chapter112State();
}

class _Chapter112State extends State<Chapter112> {
  bool _loading = false;
  String _text = '';

  void onClickBtn() async {
    setState(() {
      _loading = true;
      _text = '正在请求...';
    });

    try {
      final httpClient = HttpClient();
      final request =
          await httpClient.getUrl(Uri.parse("https://www.baidu.com"));
      request.headers.add("user-agent",
          "Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1");
      final response = await request.close();
      _text = await response.transform(utf8.decoder).join();
      print(response.headers);

      httpClient.close();
    } catch (e) {
      _text = '请求失败: $e';
    } finally {
      setState(() {
        _loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final title = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: _loading ? null : onClickBtn,
            child: Text('获取百度首页'),
          ),
          Scrollbar(
            child: SingleChildScrollView(
                padding: EdgeInsets.all(12.0),
                child: Container(
                  child: Text(
                    _text.replaceAll(RegExp(r'\s'), ''),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
