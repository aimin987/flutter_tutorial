/*
 * File: func_theme.dart
 * -----
 * Description: 7.4 颜色和主题
 * -----
 * Created  By: Aim 2020-04-18 15:53:28
 * Modified By: Aim 2020-04-18 18:57:34
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/material.dart';

// class AMNavBar extends StatelessWidget {
//   const AMNavBar({Key key, this.title, this.color}) : super(key: key);

//   final String title;
//   final Color color;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       constraints: BoxConstraints(minHeight: 52, minWidth: double.infinity),
//       decoration: BoxDecoration(color: color, boxShadow: [
//         BoxShadow(color: Colors.black26, offset: Offset(0, 3), blurRadius: 3)
//       ]),
//       child: Text(
//         title,
//         style: TextStyle(
//           fontWeight: FontWeight.bold,
//           color: color.computeLuminance() < 0.5 ? Colors.white : Colors.black,
//         ),
//       ),
//       alignment: Alignment.center,
//     );
//   }
// }

// class FuncTheme extends StatelessWidget {
//   const FuncTheme({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('7.4 颜色和主题'),
//       ),
//       body: Column(
//         children: <Widget>[
//           AMNavBar(
//             color: Colors.blue,
//             title: '标题',
//           ),
//           AMNavBar(
//             color: Colors.white,
//             title: '标题',
//           )
//         ],
//       ),
//     );
//   }
// }

class FuncTheme extends StatefulWidget {
  FuncTheme({Key key}) : super(key: key);

  @override
  _FuncThemeState createState() => _FuncThemeState();
}

class _FuncThemeState extends State<FuncTheme> {
  Color _themeColor = Colors.teal;

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Theme(
        data: ThemeData(
            primarySwatch: _themeColor,
            iconTheme: IconThemeData(color: _themeColor)),
        child: Scaffold(
          appBar: AppBar(
            title: Text('主题测试'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.favorite),
                  Icon(Icons.airport_shuttle),
                  Text(' 颜色跟随主题')
                ],
              ),
              Theme(
                data: themeData.copyWith(
                  iconTheme: themeData.iconTheme.copyWith(color: Colors.black),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.favorite),
                      Icon(Icons.airport_shuttle),
                      Text("  颜色固定黑色")
                    ]),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.palette),
            onPressed: () => setState(() {
              _themeColor =
                  _themeColor == Colors.teal ? Colors.blue : Colors.teal;
            }),
          ),
        ));
  }
}
