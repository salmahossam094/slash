// ignore_for_file: must_be_immutable

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
                    child: Image.network(
                      e.productVariations?[0].productVarientImages?[0]
                              .imagePath ??
                          'https://static.vecteezy.com/system/resources/previews/005/337/799/non_2x/icon-image-not-found-free-vector.jpgs',
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
                  Text(
                    e.name ?? 'No name',
                    style: poppins18W400(),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: Image.network(e.brands?.brandLogoImagePath ??
                        'https://static.vecteezy.com/system/resources/previews/005/337/799/non_2x/icon-image-not-found-free-vector.jpg'),
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
