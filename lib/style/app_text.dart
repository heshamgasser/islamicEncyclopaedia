import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_color.dart';

class AppText {
  static TextStyle titleLarge = GoogleFonts.elMessiri(
      fontSize: 30.sp, fontWeight: FontWeight.bold, color: Colors.white);

  static TextStyle titleMedium = GoogleFonts.elMessiri(
      fontSize: 25.sp, fontWeight: FontWeight.bold, color: Colors.white);

  static TextStyle titleSmall = GoogleFonts.elMessiri(
      fontSize: 20.sp, fontWeight: FontWeight.bold, color: Colors.white);

  static TextStyle displayLarge = GoogleFonts.reemKufi(
      fontSize: 25.sp, fontWeight: FontWeight.bold, color: Colors.white);

  static TextStyle displayMedium = GoogleFonts.notoKufiArabic(
      fontSize: 20.sp, fontWeight: FontWeight.normal, color: Colors.white);

  // static TextStyle displaySmall = GoogleFonts.notoKufiArabic(
  //     fontSize: 20.sp, fontWeight: FontWeight.normal, color: Colors.white);



  static TextStyle labelLarge = GoogleFonts.poppins(
      fontSize: 25.sp,
      fontWeight: FontWeight.bold,
      color: AppColor.boldDarkBlue);
  static TextStyle labelMedium = GoogleFonts.poppins(
      fontSize: 18.sp, fontWeight: FontWeight.bold, color: Colors.white);
  static TextStyle labelSmall = GoogleFonts.poppins(
      fontSize: 12.sp,
      fontWeight: FontWeight.bold,
      color: AppColor.boldDarkBlue);
}
