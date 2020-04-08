/*
 * File: scroll_gridview.dart
 * -----
 * Description: 6.4 GridView
 * -----
 * Created  By: Aim 2020-04-08 10:49:06
 * Modified By: Aim 2020-04-08 11:32:52
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/material.dart';

// class ScrollGridView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('6.4 GridView'),
//       ),
//       // body: GridView(
//       // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//       //   crossAxisCount: 3,
//       //   childAspectRatio: 1.0,
//       // ),
//       // children: <Widget>[
//       //   Icon(Icons.ac_unit),
//       //   Icon(Icons.airport_shuttle),
//       //   Icon(Icons.all_inclusive),
//       //   Icon(Icons.beach_access),
//       //   Icon(Icons.cake),
//       //   Icon(Icons.free_breakfast)
//       // ],

//       // body: GridView.count(
//       //   crossAxisCount: 3,
//       //   childAspectRatio: 1.0,
//       //   children: <Widget>[
//       //     Icon(Icons.ac_unit),
//       //     Icon(Icons.airport_shuttle),
//       //     Icon(Icons.all_inclusive),
//       //     Icon(Icons.beach_access),
//       //     Icon(Icons.cake),
//       //     Icon(Icons.free_breakfast)
//       //   ],

//       // body: GridView(
//       //   padding: EdgeInsets.zero,
//       //   gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//       //     maxCrossAxisExtent: 120.0,
//       //     childAspectRatio: 2.0,
//       //   ),
//       //   children: <Widget>[
//       //     Icon(Icons.ac_unit),
//       //     Icon(Icons.airport_shuttle),
//       //     Icon(Icons.all_inclusive),
//       //     Icon(Icons.beach_access),
//       //     Icon(Icons.cake),
//       //     Icon(Icons.free_breakfast)
//       //   ],
//       // ),

//       body: GridView.extent(
//         maxCrossAxisExtent: 120,
//         childAspectRatio: 2.0,
//         children: <Widget>[
//           Icon(Icons.ac_unit),
//           Icon(Icons.airport_shuttle),
//           Icon(Icons.all_inclusive),
//           Icon(Icons.beach_access),
//           Icon(Icons.cake),
//           Icon(Icons.free_breakfast)
//         ],
//       ),
//     );
//   }
// }

class ScrollGridView extends StatefulWidget {
  @override
  _ScrollGridViewState createState() => _ScrollGridViewState();
}

class _ScrollGridViewState extends State<ScrollGridView> {
  List<IconData> _icons = [];

  @override
  void initState() {
    _retrieveIcons();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('无限网格'),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.0,
          ),
          itemCount: _icons.length,
          itemBuilder: (context, index) {
            if (index == _icons.length - 1 && _icons.length < 200) {
              _retrieveIcons();
            }
            return Icon(_icons[index]);
          }),
    );
  }

  //模拟异步获取数据
  void _retrieveIcons() {
    Future.delayed(Duration(milliseconds: 200)).then((e) {
      setState(() {
        _icons.addAll([
          Icons.ac_unit,
          Icons.airport_shuttle,
          Icons.all_inclusive,
          Icons.beach_access,
          Icons.cake,
          Icons.free_breakfast
        ]);
      });
    });
  }
}
