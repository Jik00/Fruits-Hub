import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/services/shared_preferences_singleton.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/context_extensions.dart';
import 'package:fruits_hub/features/auth/presentation/views/signin_view.dart';

class PageviewItem extends StatelessWidget {
  const PageviewItem(
      {super.key,
      required this.img,
      required this.backgroundImg,
      required this.subtitle,
      required this.title,
      required this.isVisible});

  final String img, backgroundImg, subtitle;
  final Widget title;
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 0.52.sh,
          child: Stack(
            children: [
              Positioned.fill(
                  child: SvgPicture.asset(backgroundImg, fit: BoxFit.fill)),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: SvgPicture.asset(img),
              ),
              Positioned(
                  top: 39.h,
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(start: 16.w),
                    child: Visibility(
                      visible: isVisible,
                      child: GestureDetector(
                        onTap: () {
                          Prefs.setBool(kIsOnboardingSeen, true);
                          Navigator.pushReplacementNamed(
                              context, SignInView.routeName);
                        },
                        child: Text(context.loc.onboardingSkip,
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 14.sp,
                              color: AppColors.grayscale400,
                            )),
                      ),
                    ),
                  )),
            ],
          ),
        ),
        SizedBox(
          height: 64.h,
        ),
        title,
        SizedBox(
          height: 24.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.textColor),
          ),
        ),
      ],
    );
  }
}
