import 'package:flutter/material.dart';

class DashboardProvider extends ChangeNotifier {
  int count = 1;

  updateCount() {
    count++;
    notifyListeners();
  }
}
