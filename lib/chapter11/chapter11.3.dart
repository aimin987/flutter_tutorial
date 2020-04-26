/*
 * File: chapter11.3.dart
 * -----
 * Description: 11.3 Http请求-Dio http库
 * -----
 * Created  By: Aim 2020-04-24 11:25:29
 * Modified By: Aim 2020-04-26 15:04:27
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' show parse;

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Chapter113 extends StatefulWidget {
  Chapter113({Key key}) : super(key: key);

  @override
  _Chapter113State createState() => _Chapter113State();
}

class _Chapter113State extends State<Chapter113> {
  Dio _dio = Dio(BaseOptions(headers: {
    "user-agent":
        "Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1"
  }));

  @override
  Widget build(BuildContext context) {
    final title = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: FutureBuilder(
        future: _dio.get("http://lab.scrapyd.cn/archives/55.html"),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            Response response = snapshot.data;
            if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            }

            this.parseData(response.data.toString());

            return Text(response.data.toString());
            // return ListView(
            //     children: response.data
            //         .map<Widget>((e) => ListTile(title: Text(e['full_name'])))
            //         .toList());
          }

          return CircularProgressIndicator();
        },
      ),
    );
  }


  void parseData(String data) {
    
    dom.Document document = parse(data);
    print(document);

    var list = document.querySelectorAll('.post img');
    for (var item in list) {
      print(item.attributes['src']);
    }
  }
}
