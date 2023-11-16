import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier{

  int selectedIndex = 0;

  void changeSelectedIndex (int value){
    selectedIndex = value;
    notifyListeners();
  }

}