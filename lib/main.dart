import 'package:flutter/material.dart';
import 'package:flutter_tutorial/examples/counter.dart';
import 'package:flutter_tutorial/examples/material_widget.dart';
import 'package:flutter_tutorial/examples/state.dart';
import 'package:flutter_tutorial/examples/switch_checkbox.dart';
// import 'package:flutter_tutorial/examples/hello_world.dart';
// import 'package:flutter_tutorial/examples/material_widget.dart';

void main() => runApp(Test());

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '测试',
      routes: {
        '/': (context) => HomeRoute(),
        'switch_checkbox': (context) => SwitchAndCheckBoxRoute()
      },
    );
  }
}

// 主界面
class HomeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('测试事例'),
      ),
      body: Column(
        children: <Widget>[
          FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, 'switch_checkbox');
              },
              child: Text('单选、复选框'))
        ],
      ),
    );
  }
}
