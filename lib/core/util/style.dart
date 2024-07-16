
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/core/util/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle{
  static TextStyle hintStyle = GoogleFonts.poppins(
    color: AppColors.primaryColor,
    fontSize: 14.sp,
    fontWeight: FontWeight.w300,
  );

  static TextStyle discountStyle = GoogleFonts.poppins(
    color: AppColors.blueColor,
    fontSize: 11,
    fontWeight: FontWeight.w400,
    decoration: TextDecoration.lineThrough,
  );

  static TextStyle cardStyle = GoogleFonts.poppins(
    color: AppColors.fontColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static TextStyle reviewStyle = GoogleFonts.poppins(
    color: AppColors.fontColor,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

}