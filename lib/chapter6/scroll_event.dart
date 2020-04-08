/*
 * File: scroll_event.dart
 * -----
 * Description: 6.6 滚动监听及控制
 * ----- 
 * Created  By: Aim 2020-04-08 15:40:50
 * Modified By: Aim 2020-04-08 16:42:33
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/material.dart';

// class ScrollEvent extends StatefulWidget {
//   @override
//   _ScrollEventState createState() => _ScrollEventState();
// }

// class _ScrollEventState extends State<ScrollEvent> {
//   ScrollController _controller = new ScrollController();
//   bool showToTopBtn = false;

//   @override
//   void initState() {
//     super.initState();

//     _controller.addListener(() {
//       print(_controller.offset);

//       if (_controller.offset < 1000 && showToTopBtn) {
//         setState(() {
//           showToTopBtn = false;
//         });
//       } else if (_controller.offset >= 1000 && showToTopBtn == false) {
//         setState(() {
//           showToTopBtn = true;
//         });
//       }
//     });
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('6.6 滚动监听及控制'),
//       ),
//       body: Scrollbar(
//         child: ListView.builder(
//             itemCount: 100,
//             itemExtent: 50.0,
//             controller: _controller,
//             itemBuilder: (context, index) {
//               return ListTile(
//                 title: Text('$index'),
//               );
//             }),
//       ),
//       floatingActionButton: showToTopBtn
//           ? FloatingActionButton(
//               child: Icon(Icons.arrow_upward),
//               onPressed: () {
//                 _controller.animateTo(
//                   .0,
//                   duration: Duration(milliseconds: 200),
//                   curve: Curves.ease,
//                 );
//               },
//             )
//           : null,
//     );
//   }
// }

class ScrollEvent extends StatefulWidget {
  @override
  _ScrollEventState createState() => _ScrollEventState();
}

class _ScrollEventState extends State<ScrollEvent> {
  String _progress = "0%";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('6.6 滚动监听及控制'),
      ),
      body: Scrollbar(
        child: NotificationListener<ScrollNotification>(
          onNotification: (ScrollNotification notification) {
            double progress = notification.metrics.pixels /
                notification.metrics.maxScrollExtent;
            setState(() {
              _progress = '${(progress * 100).toInt()}%';
            });
          },
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              ListView.builder(
                  itemCount: 100,
                  itemExtent: 50.0,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('$index'),
                    );
                  }),
              CircleAvatar(
                radius: 30.0,
                child: Text(_progress),
                backgroundColor: Colors.black54,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
