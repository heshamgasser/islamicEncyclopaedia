import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/style/app_color.dart';
import 'package:quran/style/app_text.dart';

class AppTheme {

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    brightness: Brightness.light,


    appBarTheme: AppBarTheme(
      toolbarHeight: 100.h,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(size: 30.r, color: Colors.black,),
    ),

    textTheme: TextTheme(
      titleLarge: AppText.titleLarge,
      titleMedium: AppText.titleMedium,
      titleSmall: AppText.titleSmall,

      displayLarge: AppText.displayLarge,
      displayMedium: AppText.displayMedium,

      labelLarge: AppText.labelLarge,
      labelMedium: AppText.labelMedium,
      labelSmall: AppText.labelSmall
    ),

   dividerTheme: DividerThemeData(
     color: Colors.white,
     thickness: 3.r,
     indent: 100.w,
     endIndent: 100.w
   ),



    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showSelectedLabels: true,
      type: BottomNavigationBarType.shifting,
      backgroundColor: AppColor.lightBlue,
      selectedItemColor: AppColor.boldDarkBlue,
      unselectedItemColor: Colors.white,
      selectedLabelStyle: AppText.labelSmall,
      unselectedLabelStyle: AppText.labelSmall.copyWith(color: Colors.white),
      showUnselectedLabels: true,
      selectedIconTheme: IconThemeData(size: 30.r),
      unselectedIconTheme: IconThemeData(size: 30.r),

    ),
  );


}