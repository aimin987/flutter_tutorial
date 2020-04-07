/*
 * File: scroll_listview.dart
 * -----
 * Description: 6.3 ListView
 * -----
 * Created  By: Aim 2020-04-07 16:10:57
 * Modified By: Aim 2020-04-07 18:03:12
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/material.dart';

class ScrollListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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

      body: ListView.separated(
        padding: const EdgeInsets.all(12.0),
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(title: Text('$index'));
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider(color: Colors.blue);
        },
      ),
    );
  }
}
