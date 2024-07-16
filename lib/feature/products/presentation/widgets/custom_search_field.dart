import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_task/core/util/app_string.dart';

import '../../../../core/util/app_colors.dart';
import '../../../../core/util/app_images.dart';
import '../../../../core/util/style.dart';

class CustomSearchField extends StatelessWidget {
  final void Function(String) onChanged;
   const CustomSearchField({
    super.key, required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value){
        onChanged(value);
      },
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: 4.h,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                width: 1, color: AppColors.blueColor),
            borderRadius: BorderRadius.circular(25.r),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
                width: 1, color: AppColors.blueColor),
            borderRadius: BorderRadius.circular(25.r),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                width: 1, color: AppColors.blueColor),
            borderRadius: BorderRadius.circular(25.r),
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SvgPicture.asset(AppImages.iconSearch,),
          ),
          hintText: AppStrings.hintSearch,
          hintStyle: AppStyle.hintStyle,
      ),
    );
  }
}
