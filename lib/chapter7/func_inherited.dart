/*
 * File: func_inherited.dart
 * -----
 * Description: 7.2 数据共享（InheritedWidget）
 * -----
 * Created  By: Aim 2020-04-09 13:07:56
 * Modified By: Aim 2020-04-09 14:24:28
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/material.dart';

class ShareDataWidget extends InheritedWidget {
  ShareDataWidget({@required this.data, Widget child}) : super(child: child);

  final int data;

  static ShareDataWidget of(BuildContext context) {
    // return context.inheritFromWidgetOfExactType(ShareDataWidget);
    // return context.dependOnInheritedWidgetOfExactType<ShareDataWidget>();
    return context.getElementForInheritedWidgetOfExactType<ShareDataWidget>().widget;
  }

  @override
  bool updateShouldNotify(ShareDataWidget oldWidget) {
    return oldWidget.data != data;
  }
}

/// 子组件
class FuncInheritedChild extends StatefulWidget {
  @override
  _FuncInheritedChildState createState() => _FuncInheritedChildState();
}

class _FuncInheritedChildState extends State<FuncInheritedChild> {
  @override
  Widget build(BuildContext context) {
    return Text(ShareDataWidget.of(context).data.toString());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    print('Dependencies change');
  }
}

/// 父组件
class FuncInherited extends StatefulWidget {
  @override
  _FuncInheritedState createState() => _FuncInheritedState();
}

class _FuncInheritedState extends State<FuncInherited> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('7.2 数据共享（InheritedWidget）'),
      ),
      body: Center(
        child: ShareDataWidget(
          data: count,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: FuncInheritedChild(),
              ),
              RaisedButton(
                  child: Text('Increment'),
                  onPressed: () => setState(() => ++count))
            ],
          ),
        ),
      ),
    );
  }
}
