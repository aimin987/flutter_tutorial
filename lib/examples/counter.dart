/*
 * File: counter.dart
 * -----
 * Description: State/路由 练习
 * -----
 * Created  By: Aim 2020-02-18 13:35:38
 * Modified By: Aim 2020-02-18 15:58:46
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
      home: new Home(
        title: '计数器标题',
      ),
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
                  Navigator.push(context,
                      new MaterialPageRoute(builder: (context) {
                    return NewRoute();
                  }));
                },
                child: Text("Open New Route"))
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
