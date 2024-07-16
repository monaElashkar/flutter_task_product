import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_task/core/util/app_images.dart';

import '../../../../core/util/app_colors.dart';

AppBar customAppBar() {
  return AppBar(
    backgroundColor: AppColors.backGround,
    elevation: 0,
    leadingWidth: 100.w,
    leading: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SvgPicture.asset(AppImages.logo),
    ),
  );
}