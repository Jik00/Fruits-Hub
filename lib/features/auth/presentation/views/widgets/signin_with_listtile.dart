import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';

class SignInWithListtile extends StatelessWidget {
  const SignInWithListtile(
      {super.key, required this.title, required this.icon});

  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.textFieldBorderColor, width: 1.5),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: ListTile(
        leading: SvgPicture.asset(
          icon,
          height: 25.h,
        ),
        title: Text(title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600)),
        onTap: () {
          // Handle login action
        },
      ),
    );
  }
}
