import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:quran/provider/home_provider.dart';
import 'package:quran/style/app_color.dart';

class HomeLayout extends StatelessWidget {
  static const String routeName = 'Home Layout';



  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      builder: (context, child) {

        var homeProvider = Provider.of<HomeProvider>(context);

        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover),
          ),
          child: Scaffold(
            extendBody: true,
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: Column(
                children: [
                  Text(
                    'Islamic',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Divider(),
                ],
              ),
            ),

          body: homeProvider.tabs[homeProvider.selectedIndex],

            bottomNavigationBar: ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.r),
                topLeft: Radius.circular(20.r),
              ),
              child: BottomNavigationBar(
                currentIndex: homeProvider.selectedIndex,

                onTap: (value) {
                  homeProvider.changeSelectedIndex(value);
                },

                items: [
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage('assets/images/quran.png'),
                      ),
                      label: 'Quran',
                      backgroundColor: AppColor.lightBlue),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage('assets/images/hadeth.png'),
                      ),
                      label: 'Hadeth',
                      backgroundColor: AppColor.lightBlue),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage('assets/images/sebha.png'),
                      ),
                      label: 'Azkar',
                      backgroundColor: AppColor.lightBlue),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.settings),
                      label: 'Settings',
                      backgroundColor: AppColor.lightBlue),
                ],
              ),
            ),
          ),
        );
      },


    );
  }
}
