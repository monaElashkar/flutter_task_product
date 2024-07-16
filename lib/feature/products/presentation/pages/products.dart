import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task/core/util/app_images.dart';
import '../../../../core/util/app_colors.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_search_field.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backGround,
        appBar: customAppBar(),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Row(
                children: [
                  Expanded(
                    child: CustomSearchField(
                      onChanged: (value) {},
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: SvgPicture.asset(
                      AppImages.iconShoppingCart,
                      height: 35.h,
                      width: 35.w,
                    ),
                  ),
                ],
              ),
            ),

          ],
        ));
  }
}
