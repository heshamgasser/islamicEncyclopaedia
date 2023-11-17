import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier{
  bool arabicSelected = false;
  String languageCode = 'ar';


  void changeArabicSelected (bool value){
    arabicSelected = value;
    notifyListeners();
  }

  void changeLanguageCode (String selectedLanguage){
    if (languageCode == selectedLanguage) return;

    languageCode  = selectedLanguage;
    notifyListeners();
  }



}