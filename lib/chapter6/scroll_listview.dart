/*
 * File: scroll_listview.dart
 * -----
 * Description: 6.3 ListView
 * -----
 * Created  By: Aim 2020-04-07 16:10:57
 * Modified By: Aim 2020-04-08 10:41:18
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/material.dart';

class ScrollListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget divider1 = Divider(color: Colors.blue);
    Widget divider2 = Divider(color: Colors.green);

    return Scaffold(
      appBar: AppBar(
        title: Text('6.3 ListView'),
      ),
      // body: ListView(
      //   shrinkWrap: true,
      //   padding: const EdgeInsets.all(20.0),
      //   children: <Widget>[
      //     const Text('I\'m dedicating every day to you'),
      //     const Text('Domestic life was never quite my style'),
      //     const Text('When you smile, you knock me out, I fall apart'),
      //     const Text('And I thought I was so smart'),
      //   ],
      // ),

      // body: ListView.separated(
      //   padding: const EdgeInsets.all(12.0),
      //   itemCount: 100,
      //   itemBuilder: (BuildContext context, int index) {
      //     return ListTile(title: Text('$index'));
      //   },
      //   separatorBuilder: (BuildContext context, int index) {
      //     return index % 2 == 0 ? divider1 : divider2;
      //   },
      // ),

      body: Column(
        children: <Widget>[
          ListTile(
            title: Text('商品列表'),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: 100,
                  itemExtent: 40.0,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text('$index'),
                    );
                  }))
        ],
      ),
    );
  }
}
