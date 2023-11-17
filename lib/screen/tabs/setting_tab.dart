import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:quran/provider/app_provider.dart';
import 'package:quran/provider/setting_provider.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SettingProvider(),
      builder: (context, child) {
        var appProvider = Provider.of<AppProvider>(context);
        var settingProvider = Provider.of<SettingProvider>(context);
      return  Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.language, size: 30.r, color: Colors.white,),
                SizedBox(width:  10.w),
                Text(
                  'Language',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Spacer(),
                DropdownButton(
                  iconEnabledColor:Colors.lightBlue,
                  value: settingProvider.selectedLang,

                  dropdownColor: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(20.r),
                  items: settingProvider.languages
                      .map((e) => DropdownMenuItem(
                    child: Text(
                      e,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    value: e,
                  ))
                      .toList(),
                  onChanged: (value) {
                   settingProvider.changeSelectedLang(value ?? settingProvider.selectedLang);
                   appProvider.changeLanguageCode(settingProvider.selectedLang == 'English' ? 'en' : 'ar');
                  },
                )
              ],
            ),

          ],
        ),
      );
      },

    );
  }
}
