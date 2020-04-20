/*
 * File: chapter9.2.dart
 * -----
 * Description: 9.2 动画基本结构及状态监听
 * -----
 * Created  By: Aim 2020-04-20 16:28:54
 * Modified By: Aim 2020-04-20 17:54:53
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/material.dart';

class Chapter92 extends StatefulWidget {
  @override
  _Chapter92State createState() => _Chapter92State();
}

class _Chapter92State extends State<Chapter92>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = new AnimationController(
        vsync: this, duration: const Duration(seconds: 3));

    animation = CurvedAnimation(parent: controller, curve: Curves.bounceIn);
    animation = Tween(begin: 0.0, end: 300.0).animate(animation);
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });

    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String title = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      // body: Center(
      //     child: AnimatedImage(
      //   animation: animation,
      // )),

      // body: AnimatedBuilder(
      //   animation: animation,
      //   child: Image.asset('images/avatar.png'),
      //   builder: (ctx, child) {
      //     return Center(
      //       child: Container(
      //         width: animation.value,
      //         height: animation.value,
      //         child: child,
      //       ),
      //     );
      //   },
      // ),

      body: GrowTransition(
        child: Image.asset('images/avatar.png'),
        animation: animation,
      ),
    );
  }
}

class AnimatedImage extends AnimatedWidget {
  AnimatedImage({Key key, Animation<double> animation})
      : super(key: key, listenable: animation);
  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable;
    return Image.asset(
      'images/avatar.png',
      width: animation.value,
      height: animation.value,
    );
  }
}

class GrowTransition extends StatelessWidget {
  GrowTransition({this.child, this.animation});
  final Widget child;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: animation,
        builder: (context, child) {
          return Container(
            width: animation.value,
            height: animation.value,
            child: child,
          );
        },
        child: child,
      ),
    );
  }
}
