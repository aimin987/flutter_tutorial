/*
 * File: scroll_infiniteListView.dart
 * -----
 * Description: 无限加载列表
 * -----
 * Created  By: Aim 2020-04-08 09:56:54
 * Modified By: Aim 2020-04-08 10:28:07
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class ScrollInfiniteListView extends StatefulWidget {
  @override
  _ScrollInfiniteListViewState createState() => _ScrollInfiniteListViewState();
}

class _ScrollInfiniteListViewState extends State<ScrollInfiniteListView> {
  static const loadingTag = '##loading##';
  var _words = <String>[loadingTag];

  @override
  void initState() {
    super.initState();
    _retrieveData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('无限加载列表'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          if (_words[index] == loadingTag) {
            if (_words.length - 1 < 100) {
              _retrieveData();

              return Container(
                padding: const EdgeInsets.all(16.0),
                alignment: Alignment.center,
                child: SizedBox(
                  width: 24.0,
                  height: 24.0,
                  child: CircularProgressIndicator(
                    strokeWidth: 2.0,
                  ),
                ),
              );
            } else {
              return Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(16.0),
                child: Text(
                  '没有更多',
                  style: TextStyle(color: Colors.grey),
                ),
              );
            }
          }
          return ListTile(
            title: Text(_words[index]),
          );
        },
        separatorBuilder: (context, index) => Divider(
          height: .0,
        ),
        itemCount: _words.length,
      ),
    );
  }

  void _retrieveData() {
    Future.delayed(Duration(seconds: 2)).then((e) {
      _words.insertAll(_words.length - 1,
          generateWordPairs().take(20).map((e) => e.asPascalCase).toList());
      setState(() {});
    });
  }
}
