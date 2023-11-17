import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quran/models/hadith/hadith_detail_item.dart';
import 'package:quran/shared/hadeth_api_manager.dart';
import 'package:quran/style/app_color.dart';

class HadithDetail extends StatelessWidget {
  String hadithId;
  String languageCode;

  HadithDetail({required this.hadithId, required this.languageCode});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: HadithAPIFucnction.getHadithDetail(languageCode, hadithId),
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
        var hadithDetailItem = snapshot.data;
        var wordsMeaning = snapshot.data?.wordsMeanings ?? [];

        return ListView(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
          children: [
            // Text(
            //   hadithDetailItem?.title ?? '',
            //   style: Theme.of(context).textTheme.displayLarge,
            // ),
            // SizedBox(height: 10.h),
            Text(
              hadithDetailItem?.hadeeth ?? '',
              style: Theme.of(context).textTheme.displayMedium,
            ),

            Text(
              hadithDetailItem?.attribution ?? '',
              style: Theme.of(context).textTheme.displaySmall,
              textAlign: TextAlign.end,
            ),
            Divider(),

            ListView.separated(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Text(
                        wordsMeaning[index].word ?? '',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(color: Colors.black),
                      ),
                      Text(
                        ': ',
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(color:Colors.black),
                      ),
                      Expanded(
                        child: Text(
                          wordsMeaning[index].meaning ?? '',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(color: AppColor.lightYellow),
                        ),
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: 10.h);
                },
                itemCount: wordsMeaning.length),
          ],
        );
      },
    );
  }
}
