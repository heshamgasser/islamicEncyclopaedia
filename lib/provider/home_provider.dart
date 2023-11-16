import 'package:flutter/material.dart';
import 'package:quran/screen/tabs/azkar_tab.dart';
import 'package:quran/screen/tabs/hadeth_tab.dart';
import 'package:quran/screen/tabs/quran_tab.dart';
import 'package:quran/screen/tabs/setting_tab.dart';

class HomeProvider extends ChangeNotifier{

  int selectedIndex = 0;

  void changeSelectedIndex (int value){
    selectedIndex = value;
    notifyListeners();
  }


  List<Widget> tabs = [QuranTab(), HadethTab(), AzkarTab(), SettingsTab()];

}