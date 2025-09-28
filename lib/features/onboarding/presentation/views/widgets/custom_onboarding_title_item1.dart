import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/context_extensions.dart';

class CustomOnboardingtitle extends StatelessWidget {
  const CustomOnboardingtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          context.loc.onboardingTitleItem1Part1,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 23.sp),
        ),
        Text(
          context.loc.onboardingTitleItem1Part2,
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 23.sp,
              color: AppColors.amber),
        ),
        Text(
          context.loc.onboardingTitleItem1Part3,
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 23.sp,
              color: AppColors.primaryColor),
        ),
      ],
    );
  }
}
