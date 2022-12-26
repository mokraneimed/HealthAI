import 'dart:collection';
import 'package:flutter/material.dart';

class TaskProvider extends ChangeNotifier {
  int splashPage = 0;
  void splashIncrement() {
    splashPage++;
    notifyListeners();
  }

  int activePage = 0;
  void increment() {
    activePage++;
    notifyListeners();
  }

  int page_n = 0;
  void changeIndex(int ndex) {
    page_n = ndex;
    notifyListeners();
  }

  void init() {
    activePage = 0;
    page_n = 0;
    notifyListeners();
  }
}
