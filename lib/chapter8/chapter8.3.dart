/*
 * File: chapter8.3.dart
 * -----
 * Description: 8.3 事件总线
 * -----
 * Created  By: Aim 2020-04-20 11:05:01
 * Modified By: Aim 2020-04-20 13:44:29
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */

import 'package:flutter/material.dart';

typedef void EventCallback(arg);

class EventBus {
  EventBus._internal();

  static EventBus _singleton = new EventBus._internal();

  factory EventBus() => _singleton;

  var _emap = new Map<Object, List<EventCallback>>();

  void on(eventName, EventCallback f) {
    if (eventName == null || f == null) {
      return;
    }

    _emap[eventName] ??= new List<EventCallback>();
    _emap[eventName].add(f);
  }

  void off(eventName, [EventCallback f]) {
    var list = _emap[eventName];
    if (eventName == null || list == null) {
      return null;
    }
    if (f == null) {
      _emap[eventName] = null;
    } else {
      list.remove(f);
    }
  }

  void emit(eventName, [arg]) {
    var list = _emap[eventName];
    if (list == null) {
      return;
    }

    int len = list.length - 1;
    for (var i = len; i > -1; --i) {
      list[i](arg);
    }
  }
}

var bus = new EventBus();

class Chapter83 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String _title = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: Center(),
    );
  }
}
