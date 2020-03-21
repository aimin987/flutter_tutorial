import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_tutorial/chapter4/chapter4.dart';

void main() => runApp(Test());

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '测试',
      routes: {
        '/': (context) => HomeRoute(),
        // 'switch_checkbox': (context) => SwitchAndCheckBoxRoute(),
        // 'textfield_form': (context) => TextFieldAndForm(),
        // 'row_column': (context) => RowAndColumn(),
        // 'wrap_flow': (context) => WarpAndFlowLayout()
        'chapter4': (context) => Chapter4()
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
          title: Text('Flutter实战'),
        ),
        body: ConstrainedBox(
            constraints: BoxConstraints(minWidth: double.infinity),
            child: Column(
              children: <Widget>[
                FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'chapter4');
                    },
                    child: Text('第四章:布局组件')),
              ],
            )));
  }
}
