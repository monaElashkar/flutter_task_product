import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_task/config.dart';
import 'package:flutter_task/core/util/app_images.dart';
import '../../../../core/util/app_colors.dart';
import '../bloc/products_bloc.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_search_field.dart';
import '../widgets/product_item.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      getIt<ProductsBloc>()
        ..add(const GetProductsEvent()),
      child: BlocConsumer<ProductsBloc, ProductsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
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
                  SizedBox(height: 15.h,),
                  Expanded(
                    child: GridView.builder(
                      itemCount:state.getProductsModel?.products?.length,
                      itemBuilder: (context, index) {
                        return ProductItem(
                            productModel: state.getProductsModel,
                          index: index
                        );
                      },
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 16,
                        mainAxisExtent: 237,
                      ),
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 10,
                        bottom: 10,
                      ),
                    ),
                  ),
                ],
              ));
        },
      ),
    );
  }
}
