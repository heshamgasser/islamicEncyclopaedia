import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:quran/models/hadith/hadith_category.dart';
import 'package:quran/provider/app_provider.dart';
import 'package:quran/screen/views/hadith_detail.dart';
import 'package:quran/screen/widget/hadeth_category_item.dart';
import 'package:quran/shared/hadeth_api_manager.dart';
import 'package:quran/style/app_color.dart';

class HadethList extends StatelessWidget {
  static const String routeName = 'Hadeth List';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as HadithCategory;
    var appProvider = Provider.of<AppProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context)!.hadeth,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  args.title ?? '',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 15.h),
              FutureBuilder(
                future: HadithAPIFucnction.getHadithList(
                    appProvider.languageCode, args.id ?? ''),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  if (snapshot.hasError) {
                    return Center(
                      child: Text(
                        'Something Went Wrong',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    );
                  }

                  if (!snapshot.hasData) {
                    return Center(
                      child: Text('There is no Data',
                          style: Theme.of(context).textTheme.titleMedium),
                    );
                  }

                  var hadithList = snapshot.data?.data ?? [];

                  return Expanded(
                    child: ListView.separated(
                        itemBuilder: (context, index) {
                          return HadethCategoryItems(
                            categoryItem: hadithList[index].title ?? '',
                            categoryColor: AppColor.darkBlue,
                            categoryFunction: () {
                              showModalBottomSheet(
                                backgroundColor: AppColor.darkBlue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20.r),
                                    topRight: Radius.circular(20.r),
                                  ),
                                ),
                                context: context,
                                builder: (context) {
                                  return HadithDetail(
                                    hadithId: hadithList[index].id ?? '',
                                    languageCode: appProvider.languageCode,
                                  );
                                },
                              );
                            },
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 10.h);
                        },
                        itemCount: hadithList.length),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
