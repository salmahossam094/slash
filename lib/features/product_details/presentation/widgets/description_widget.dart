import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_intern/core/utils/app_colors.dart';
import 'package:slash_intern/core/utils/text_styles.dart';

// ignore: must_be_immutable
class DescriptionWidget extends StatelessWidget {
  DescriptionWidget({required this.description,required this.visible, super.key});

  bool visible;
  String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12).w,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
          borderRadius: BorderRadius.circular(20.r)),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Description',
                style: poppins24W400().copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              Icon(
                visible
                    ? Icons.arrow_drop_down_sharp
                    : Icons.arrow_drop_up_sharp,
                color: AppColors.onPrimary,
              ),
            ],
          ),
          Visibility(
            visible: visible,
            child: Padding(
              padding: const EdgeInsets.all(15.0).w,
              child: Text(
                description,
                style: poppins18W400(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
