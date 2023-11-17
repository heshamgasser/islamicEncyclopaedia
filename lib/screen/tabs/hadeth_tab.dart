import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:quran/provider/app_provider.dart';
import 'package:quran/screen/widget/hadeth_category_item.dart';
import 'package:quran/shared/hadeth_api_manager.dart';
import 'package:quran/style/app_color.dart';

class HadethTab extends StatelessWidget {
  const HadethTab({super.key});

  @override
  Widget build(BuildContext context) {
      var appProvider = Provider.of<AppProvider>(context);
    return


      FutureBuilder(future: HadithAPIFucnction.getHadithCategory(appProvider.languageCode), builder: (context, snapshot) {
      print(snapshot.data?[1]);
      if (snapshot.connectionState == ConnectionState.waiting){
        return Center(child: CircularProgressIndicator(),);
      }

      if (snapshot.hasError){
        return Center(child: Text('Something Went Wrong'));
      }

      if (!snapshot.hasData){
        return Center(child: Text('There is no Data'));
      }

      var hadithCategory = snapshot.data ?? [];

      return ListView.separated(itemBuilder: (context, index) {
        return HadethCategoryItems(hadithCategory[index].title ?? '',AppColor.darkBlue);
      }, separatorBuilder: (context, index) {
        return SizedBox(height: 10.h);
      }, itemCount: hadithCategory.length);

    },);

  }
}
