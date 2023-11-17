import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:quran/provider/app_provider.dart';
import 'package:quran/provider/setting_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:quran/screen/widget/language_container.dart';
import 'package:quran/style/app_color.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SettingProvider(),
      builder: (context, child) {
        var appProvider = Provider.of<AppProvider>(context);
        var settingProvider = Provider.of<SettingProvider>(context);
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.language,
                    size: 30.r,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    AppLocalizations.of(context)!.language,
                    style: Theme
                        .of(context)
                        .textTheme
                        .titleMedium,
                  ),
                ],
              ),

              LanguageContainer(
                text: appProvider.languageCode == 'en' ? AppLocalizations.of(
                    context)!.english : AppLocalizations.of(context)!.arabic,
                optionOne: AppLocalizations.of(context)!.english,
                optionTwo: AppLocalizations.of(context)!.arabic,
                selectedItem: appProvider.languageCode == 'en' ? true : false,
                optionOneFunction: () {
                  appProvider.changeLanguageCode('en');
                  Navigator.pop(context);
                },
                optionTwoFUnction: () {
                  appProvider.changeLanguageCode('ar');
                  Navigator.pop(context);
                },
              ),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Text(AppLocalizations.of(context)!.english, style: Theme.of(context).textTheme.displayMedium,),
              //     Switch(
              //       inactiveTrackColor: Colors.lightBlue,
              //       activeTrackColor: Colors.lightBlue,
              //       activeColor: AppColor.lightYellow,
              //       inactiveThumbColor: AppColor.lightYellow,
              //
              //       value: appProvider.arabicSelected, onChanged: (value){
              //       appProvider.changeArabicSelected(value);
              //        appProvider.changeLanguageCode(appProvider.arabicSelected ? 'ar' : 'en');
              //     },),
              //     Text(AppLocalizations.of(context)!.arabic, style: Theme.of(context).textTheme.displayMedium,),
              //   ],
              // ),
            ],
          ),
        );
      },
    );
  }
}
