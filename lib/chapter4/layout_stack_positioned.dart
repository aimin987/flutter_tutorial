import 'package:flutter/material.dart';

class LayoutStackPositioned extends StatelessWidget {
  const LayoutStackPositioned({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('层叠布局-Stack,Positioned'),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: Stack(
          alignment: Alignment.center,
          fit: StackFit.expand,
          children: <Widget>[
            Positioned(
              child: Text('I am Aim'),
              left: 18.0,
            ),
            Container(
              child: Text(
                'Hello world',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.red,
            ),
            Positioned(
              child: Text('Your friend'),
              top: 18.0,
            )
          ],
        ),
      ),
    );
  }
}
