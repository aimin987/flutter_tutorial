/*
 * File: Counter.dart
 * -----
 * Description: 
 * -----
 * Created  By: Aim 2020-04-17 15:46:46
 * Modified By: Aim 2020-04-17 15:47:17
 * -----
 * HISTORY:
 * Date      	By	Comments
 * ----------	---	----------------------------------------------------------
 */


import 'package:flutter/material.dart';

class Counter extends ChangeNotifier {
  int _count = 6;
  var _age = 20;

  int get count => _count;
  int get age => _age;

  void increment() {
    _count++;
    notifyListeners();
  }
}
