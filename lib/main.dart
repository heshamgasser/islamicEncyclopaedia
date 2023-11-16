import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/screen/home_layout.dart';
import 'package:quran/style/app_theme.dart';

void main (){
  runApp(Quran());
}

class Quran extends StatelessWidget {
  const Quran({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(412, 870),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.system,
          theme: AppTheme.lightTheme,



          initialRoute: HomeLayout.routeName,
          routes: {
            HomeLayout.routeName:(context) => HomeLayout(),
          },
        );
      },

    );
  }
}
