import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/context_extensions.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            thickness: 3,
            color: AppColors.textFieldBorderColor,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child: Text(
            context.loc.or,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            thickness: 3,
            color: AppColors.textFieldBorderColor,
          ),
        ),
      ],
    );
  }
}
