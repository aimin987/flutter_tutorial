/*
 * File: func_provider.dart
 * -----
 * Description: 7.3 跨组件状态共享（Provider）
 * -----
 * Created  By: Aim 2020-04-09 14:49:51
 * Modified By: Aim 2020-04-17 16:25:43
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/chapter7/provider/Counter.dart';
import 'package:provider/provider.dart';

///
// class InheritedProvider<T> extends InheritedWidget {
//   InheritedProvider({@required this.data, Widget child}) : super(child: child);

//   final T data;

//   @override
//   bool updateShouldNotify(InheritedProvider<T> oldWidget) {
//     //在此简单返回true，则每次更新都会调用依赖其的子孙节点的`didChangeDependencies`。
//     return true;
//   }
// }

// // 该方法用于在Dart中获取模板类型
// // Type _typeOf<T>() => T;

// ///
// class ChangeNotifier implements Listenable {
//   @override
//   void addListener(listener) {
//     // TODO: implement addListener
//   }

//   @override
//   void removeListener(listener) {
//     // TODO: implement removeListener
//   }

//   void notifyListeners() {
//     //通知所有监听器，触发监听器回调
//   }
// }

// ///

// class ChangeNotifierProvider<T extends ChangeNotifier> extends StatefulWidget {
//   ChangeNotifierProvider({Key key, this.data, this.child});

//   final Widget child;
//   final T data;

//   static T of<T>(BuildContext context) {
//     // final type = _typeOf<InheritedProvider<T>>();
//     final provider =
//         context.dependOnInheritedWidgetOfExactType<InheritedProvider<T>>();
//     return provider.data;
//   }

//   @override
//   _ChangeNotifierProviderState<T> createState() =>
//       _ChangeNotifierProviderState<T>();
// }

// class _ChangeNotifierProviderState<T extends ChangeNotifier>
//     extends State<ChangeNotifierProvider<T>> {

//   void update() {
//     //如果数据发生变化（model类调用了notifyListeners），重新构建InheritedProvider
//     setState(() => {});
//   }

//   @override
//   void initState() {
//     widget.data.addListener(update);
//     super.initState();
//   }

//   @override
//   void dispose() {
//     widget.data.removeListener(update);
//     super.dispose();
//   }

//   @override
//   void didUpdateWidget(ChangeNotifierProvider<T> oldWidget) {
//     if (widget.data != oldWidget.data) {
//       oldWidget.data.removeListener(update);
//       widget.data.addListener(update);
//     }
//     super.didUpdateWidget(oldWidget);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return InheritedProvider<T>(
//       data: widget.data,
//       child: widget.child,
//     );
//   }
// }

// class Item {
//   Item(this.price, this.count);
//   double price;
//   int count;
// }

// class CartModel extends ChangeNotifier {
//   final List<Item> _items = [];

//   UnmodifiableListView<Item> get items => UnmodifiableListView(_items);

//   double get totalPrice =>
//       _items.fold(0, (value, item) => value + item.count * item.price);

//   void add(Item item) {
//     _items.add(item);

//     notifyListeners();
//   }
// }

class FuncProvider extends StatefulWidget {
  @override
  _FuncProviderState createState() => _FuncProviderState();
}

class _FuncProviderState extends State<FuncProvider> {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('7.3 跨组件状态共享（Provider）'),
        ),
        // body: Center(
        //   child: ChangeNotifierProvider<CartModel>(
        //     data: CartModel(),
        //     child: Builder(builder: (context) {
        //       return Column(
        //         children: <Widget>[
        //           Builder(builder: (context) {
        //             var cart = ChangeNotifierProvider.of<CartModel>(context);
        //             return Text("总价: ${cart.totalPrice}");
        //           }),
        //           Builder(builder: (context) {
        //             print("RaisedButton build"); //在后面优化部分会用到
        //             return RaisedButton(
        //               child: Text("添加商品"),
        //               onPressed: () {
        //                 //给购物车中添加商品，添加后总价会更新
        //                 ChangeNotifierProvider.of<CartModel>(context)
        //                     .add(Item(20.0, 1));
        //               },
        //             );
        //           }),
        //         ],
        //       );
        //     }),
        //   ),
        body: ListView(
          children: <Widget>[
            Text('${counter.count}'),
            RaisedButton(
                child: Text('点击'),
                onPressed: () {
                  counter.increment();
                }),
            Text('${counter.age}')
          ],
        ));
  }
}
