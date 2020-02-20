/*
 * File: counter.dart
 * -----
 * Description: State/路由 练习
 * -----
 * Created  By: Aim 2020-02-18 13:35:38
 * Modified By: Aim 2020-02-20 14:38:53
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '计数器',
      theme: new ThemeData(primaryColor: Colors.blue),
      routes: {
        '/': (context) => Home(
              title: '首页',
            ),
        'new_page': (context) => NewRoute(),
        'tip_page': (context) => TipRoute(text: '注册路由',)
      },
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context){
          // String routeName = settings.name;
          // 实现登录中间件
        });
      },
    );
  }
}

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<Home> {
  int _counter = 0;

  void increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('You have pushed the button this many times:'),
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline6,
            ),
            new FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, 'new_page');
              },
              child: Text("Open New Route"),
              textColor: Colors.blue,
            ),
            new FlatButton(
                onPressed: () async {
                  // var result = await Navigator.push(context, MaterialPageRoute(
                  //   builder: (context) {
                  //     return TipRoute(text: '我是提示路由');
                  //   },
                  // ));
                  var result = await Navigator.pushNamed(context, 'tip_page', arguments: 'HI');
                  print('路由返回值: $result');
                },
                child: Text('打开提示页'))
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: this.increment,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ),
    );
  }
}

/// 路由
class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Route"),
      ),
      body: Center(
        child: Text('This is new route'),
      ),
    );
  }
}

// 路由传值

class TipRoute extends StatelessWidget {
  TipRoute({Key key, @required this.text}) : super(key: key);

  final String text;
  

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context).settings.arguments;
    print(args);
    return Scaffold(
      appBar: AppBar(
        title: Text("提示"),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(text),
              RaisedButton(
                onPressed: () => Navigator.pop(context, '我是返回值'),
                child: Text('返回'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
