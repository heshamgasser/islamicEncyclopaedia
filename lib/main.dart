import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:quran/provider/app_provider.dart';
import 'package:quran/screen/home_layout.dart';
import 'package:quran/screen/views/hadeth_list.dart';
import 'package:quran/style/app_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => AppProvider(),
      builder: (context, child) {
        return Quran();
      },
    ),
  );
}

class Quran extends StatelessWidget {
  const Quran({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppProvider>(context);

    return ScreenUtilInit(
      designSize: Size(412, 870),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.system,
          theme: AppTheme.lightTheme,

          localizationsDelegates: [
            AppLocalizations.delegate, // Add this line
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: [
            Locale('en'), // English
            Locale('ar'), // Arabic
          ],
          locale: Locale(provider.languageCode),
          initialRoute: HomeLayout.routeName,
          routes: {
            HomeLayout.routeName: (context) => HomeLayout(),
            HadethList.routeName: (context) => HadethList(),
          },
        );
      },
    );
  }
}
