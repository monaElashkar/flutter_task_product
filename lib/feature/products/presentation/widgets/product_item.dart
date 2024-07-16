import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_task/core/util/style.dart';
import 'package:flutter_task/feature/products/data/models/product_model.dart';
import '../../../../core/util/app_colors.dart';
import '../../../../core/util/app_images.dart';

class ProductItem extends StatelessWidget {
  final int index;
  final ProductsModel? productModel;
  const ProductItem({super.key,required this.index,required this.productModel});

  @override
  Widget build(BuildContext context) {
    var product = productModel?.products?[index];
    String? discount;
    if (product?.discountPercentage != null) {
      discount = (product!.price! -
          (product.price! * (product.discountPercentage! / 100)))
          .toStringAsFixed(2);
    }
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.primaryColor),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.r),
                        topRight: Radius.circular(12.r),
                      ),
                    ),
                    child: CachedNetworkImage(
                        imageUrl: product?.images?.first ?? "",
                        fit: BoxFit.contain,
                        width: double.infinity,
                        height: 191.h,
                        errorWidget: (context, url, error) =>
                        const Icon(Icons.error_outline, size: 40)),
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    width: double.infinity,
                    height: 128.h,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Stack(
                        children: [
                          Positioned(
                            right: -15,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                elevation: 4,
                                alignment: Alignment.centerRight,
                                minimumSize: const Size(30, 30),
                                maximumSize: const Size(100, 100),
                              ),
                              child: SvgPicture.asset(
                                AppImages.favorite,
                                width: 20,
                                height: 20,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product?.title ?? "",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppStyle.cardStyle,
                  ),
                  Text(
                    product?.description ?? "",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppStyle.cardStyle,
                  ),
                  SizedBox(
                    height: 50.h,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: [
                              Text(
                                "EGP",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: AppStyle.cardStyle,
                              ),
                              const SizedBox(width: 2),
                              Text(
                                discount ?? "",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: AppStyle.cardStyle,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                "${product?.price ?? ''}",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: AppStyle.discountStyle,
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Row(
                            children: [
                              Text(
                                "Review (${product?.rating ?? ""})",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: AppStyle.reviewStyle,
                              ),
                              SizedBox(width: 3.w),
                              SvgPicture.asset(AppImages.star)
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              alignment: Alignment.center,
                              width: 30.w,
                              height: 30.h,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.blueColor,
                              ),
                              child:  Icon(
                                CupertinoIcons.plus,
                                size: 30.r,
                                color: AppColors.backGround,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
