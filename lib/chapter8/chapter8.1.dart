import 'package:flutter/material.dart';

class Chapter8_1 extends StatelessWidget {
  const Chapter8_1({Key key}) : super(key: key);
  // final String title;

  @override
  Widget build(BuildContext context) {
    String _title = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
    );
  }
}
