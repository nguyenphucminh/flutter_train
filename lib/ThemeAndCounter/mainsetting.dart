import 'package:flutter/material.dart';
class MySettingProvider extends ChangeNotifier {
  bool _isDart = false;
  get isDart => _isDart;
  void setBrightness(bool value){
    _isDart = value;
    notifyListeners();
  }
}