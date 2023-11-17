import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier{
  List<String> languages = ['English', 'Arabic'];
 String selectedLang = 'English';

 void changeSelectedLang (String value){
   selectedLang = value;
   notifyListeners();
 }


}