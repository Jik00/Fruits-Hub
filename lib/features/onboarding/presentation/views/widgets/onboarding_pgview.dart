import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/context_extensions.dart';
import 'package:fruits_hub/features/onboarding/presentation/views/widgets/custom_onboarding_title_item1.dart';
import 'package:fruits_hub/features/onboarding/presentation/views/widgets/pageview_item.dart';

class OnboardingPgview extends StatelessWidget {
  const OnboardingPgview(
      {super.key, required this.pageController, required this.currentPg});

  final PageController pageController;
  final int currentPg;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      physics: const BouncingScrollPhysics(),
      children: [
        PageviewItem(
          isVisible: true,
          img: Assets.assetsImagesPgviewItem1Img,
          backgroundImg: Assets.assetsImagesPgviewItem1Backimg,
          subtitle: context.loc.onboardingSubTitleItem1,
          title: const CustomOnboardingtitle(),
        ),
        PageviewItem(
          isVisible: false,
          img: Assets.assetsImagesPgviewItem2Img,
          backgroundImg: Assets.assetsImagesPgviewItem2Backimg,
          subtitle: context.loc.onboardingSubTitleItem2,
          title: Text(
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 23.sp),
            context.loc.onboardingTitleItem2,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
