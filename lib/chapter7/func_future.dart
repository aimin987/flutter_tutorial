/*
 * File: func_future.dart
 * -----
 * Description: 7.5 异步UI更新（FutureBuilder、StreamBuilder）
 * -----
 * Created  By: Aim 2020-04-18 20:08:57
 * Modified By: Aim 2020-04-18 20:30:55
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/material.dart';

Future<String> mockNetworkData() async {
  return Future.delayed(Duration(seconds: 3), () {
    return "我是从互联网上获取的数据";
  });
}

Stream<int> counter() {
  return Stream.periodic(Duration(seconds: 1), (i) => i);
}

class FuncFuture extends StatelessWidget {
  const FuncFuture({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('7.5 异步UI更新'),
      ),
      body: Center(
        // child: FutureBuilder<String>(
        //   future: mockNetworkData(),
        //   builder: (BuildContext context, AsyncSnapshot snapshot) {
        //     if (snapshot.connectionState == ConnectionState.done) {
        //       if (snapshot.hasError) {
        //         return Text('Error: ${snapshot.error}');
        //       } else {
        //         return Text('Contents: ${snapshot.data}');
        //       }
        //     } else {
        //       return CircularProgressIndicator();
        //     }
        //   },
        // ),
        child: StreamBuilder(
          stream: counter(),
          builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
            if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            }

            switch (snapshot.connectionState) {
              case ConnectionState.none:
                return Text('没有Stream');
              case ConnectionState.waiting:
                return Text('等待数据...');
              case ConnectionState.active:
                return Text('active: ${snapshot.data}');
              case ConnectionState.done:
                return Text('Stream已关闭');
            }

            return null;
          },
        ),
      ),
    );
  }
}
