// ignore_for_file: must_be_immutable

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_intern/core/utils/app_colors.dart';
import 'package:slash_intern/core/utils/text_styles.dart';
import 'package:slash_intern/features/products/domain/entities/product_entity.dart';

class ProductWidget extends StatelessWidget {
  ProductWidget({required this.e, super.key});

  Data e;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          color: Colors.black54,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r)),
                child: SizedBox(
                  height: 120.h,
                  width: 160.w,
                  child: ClipRRect(
                    child: CachedNetworkImage(
                      imageUrl: e.productVariations?[0].productVarientImages?[0]
                              .imagePath ??
                          'https://static.vecteezy.com/system/resources/previews/005/337/799/non_2x/icon-image-not-found-free-vector.jpgs',
                      progressIndicatorBuilder:
                          (context, url, downloadProgress) => Center(
                        child: CircularProgressIndicator(
                          value: downloadProgress.progress,
                          backgroundColor: AppColors.primary,
                          color: AppColors.primary,
                        ),
                      ),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      '${e.brands?.brandName ?? ''}- ${e.name ?? 'No name'} ',
                      maxLines: 3,
                      softWrap: true,
                      style: poppins18W400(),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Container(
                    padding: const EdgeInsets.all(2).w,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: AppColors.onPrimary, width: 1),
                        borderRadius: BorderRadius.circular(25.r)),
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: CachedNetworkImage(
                        imageUrl: e.brands?.brandLogoImagePath ??
                            'https://static.vecteezy.com/system/resources/previews/005/337/799/original/icon-image-not-found-free-vector.jpg',
                        progressIndicatorBuilder:
                            (context, url, downloadProgress) =>
                                CircularProgressIndicator(
                                    value: downloadProgress.progress,
                                    backgroundColor: AppColors.onPrimary,
                                    color: AppColors.onPrimary),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                        height: 20.h,
                        width: 20.h,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 6.h,
              ),
              Row(
                children: [
                  Text(
                    'EGP ${e.productVariations![0].price.toString()}',
                    style: poppins16W300(),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.favorite_border,
                      color: AppColors.onPrimary,
                      size: 22,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.shopping_cart,
                      color: AppColors.onPrimary,
                      size: 22,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
