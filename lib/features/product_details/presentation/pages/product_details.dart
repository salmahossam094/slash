import 'package:cached_network_image/cached_network_image.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_intern/core/utils/app_colors.dart';
import 'package:slash_intern/core/utils/text_styles.dart';
import 'package:slash_intern/features/product_details/presentation/manager/cubit.dart';
import 'package:slash_intern/features/product_details/presentation/manager/states.dart';
import 'package:slash_intern/features/product_details/presentation/widgets/description_widget.dart';
import 'package:slash_intern/features/products/domain/entities/product_entity.dart';

// ignore: must_be_immutable
class ProductDetails extends StatelessWidget {
  ProductDetails({required this.dataM, super.key});

  Data dataM;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductDetailsCubit(e: dataM)..fillImagesList(),
      child: BlocConsumer<ProductDetailsCubit, ProductDetailsStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.primary,
            appBar: AppBar(
              backgroundColor: Colors.black,
              centerTitle: true,
              title: Text(
                'Slash.',
                style: poppins28W600(),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FanCarouselImageSlider(
                      imagesLink: ProductDetailsCubit.get(context).images,
                      autoPlay: false,
                      isAssets: false,
                      initalPageIndex: 0,
                      sidesOpacity: 0.4,
                      indicatorActiveColor: AppColors.onPrimary,
                      sliderHeight: 300.h,
                      expandImageHeight: 500.h,
                      showArrowNav: true,
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Row(
                      children: [
                        Text(
                          dataM.name!,
                          style: poppins28W600(),
                        ),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.all(5).w,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColors.onPrimary, width: 1),
                              borderRadius: BorderRadius.circular(25.r)),
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: CachedNetworkImage(
                              imageUrl: dataM.brands?.brandLogoImagePath ??
                                  'https://static.vecteezy.com/system/resources/previews/005/337/799/original/icon-image-not-found-free-vector.jpg',
                              progressIndicatorBuilder:
                                  (context, url, downloadProgress) =>
                                      CircularProgressIndicator(
                                          value: downloadProgress.progress,
                                          backgroundColor: AppColors.onPrimary,
                                          color: AppColors.onPrimary),
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                              height: 25.h,
                              width: 25.h,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'EGP ${dataM.productVariations![ProductDetailsCubit.get(context).indx].price.toString()}',
                          style: poppins18W400()
                              .copyWith(fontWeight: FontWeight.w500),
                        ),
                        const Spacer(),
                        Text(
                          dataM.brands?.brandName ?? '',
                          style: poppins18W400()
                              .copyWith(fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      'Select Size',
                      style: poppins24W400().copyWith(fontSize: 22.sp),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                          dataM.productVariations!.length,
                          (index) => InkWell(
                              onTap: () {
                                ProductDetailsCubit.get(context)
                                    .selectSize(index);
                              },
                              child: Container(
                                padding: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    color:
                                        ProductDetailsCubit.get(context).indx ==
                                                index
                                            ? const Color(0xFFb7ee2e)
                                            : Colors.grey,
                                    borderRadius: BorderRadius.circular(5.r)),
                                child: Text(
                                  dataM.productVariations?.length == 1
                                      ? 'Free Size'
                                      : '${dataM.productVariations![index].id}',
                                  style: poppins18W400()
                                      .copyWith(color: AppColors.primary),
                                ),
                              ))),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InkWell(
                      onTap: () {
                        ProductDetailsCubit.get(context).description();
                      },
                      overlayColor:
                          const MaterialStatePropertyAll(Colors.transparent),
                      child: DescriptionWidget(
                          description:
                              dataM.description ?? 'No description Found',
                          visible: ProductDetailsCubit.get(context).visible),
                    ),
                    SizedBox(height: 15.h,)
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
