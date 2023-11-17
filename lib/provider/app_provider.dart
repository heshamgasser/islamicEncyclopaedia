import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier{

  String languageCode = 'en';

  void changeLanguageCode (String selectedLanguage){
    if (languageCode == selectedLanguage) return;

    languageCode  = selectedLanguage;
    notifyListeners();
  }



}