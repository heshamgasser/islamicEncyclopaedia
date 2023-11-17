import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class LanguageContainer extends StatelessWidget {
  String text;
  String optionOne;
  String optionTwo;
  bool selectedItem;
  Function optionOneFunction;
  Function optionTwoFUnction;

  LanguageContainer(
      {required this.text,
      required this.optionOne,
      required this.optionTwo,
      required this.selectedItem,
      required this.optionOneFunction,
      required this.optionTwoFUnction,
      });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r),
              topRight: Radius.circular(20.r),
            ),
          ),
          context: context,
          builder: (context) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.r),
                  topLeft: Radius.circular(20.r),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        optionOneFunction();
                      },
                      child: Row(
                        children: [
                          Text(
                            optionOne,
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                          Spacer(),
                          Visibility(
                              visible: selectedItem,
                              child: Icon(
                                Icons.done,
                                size: 30.r,
                                color: Colors.white,
                              )),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    InkWell(
                      onTap: () {
                        optionTwoFUnction();
                      },
                      child: Row(
                        children: [
                          Text(
                            optionTwo,
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                          Spacer(),
                          Visibility(
                              visible: !selectedItem,
                              child: Icon(
                                Icons.done,
                                size: 30.r,
                                color: Colors.white,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            border: Border.all(color: Colors.white)),
        child: Center(
            child: Text(
          text,
          style: Theme.of(context).textTheme.displayMedium,
        )),
      ),
    );
  }
}
