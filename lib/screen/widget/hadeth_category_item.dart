import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HadethCategoryItems extends StatelessWidget {
 String categoryItem;
 Color categoryColor;


 HadethCategoryItems(this.categoryItem, this.categoryColor);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showBottomSheet(context: context, builder: (context) {
          return Container(color: Colors.white,);
        },);
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
        height: 150.h,
        width: double.infinity,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r),
            color: categoryColor
        ),
        child: Center(child: Text(categoryItem, style: Theme.of(context).textTheme.labelMedium,),),
      ),
    );
  }
}
