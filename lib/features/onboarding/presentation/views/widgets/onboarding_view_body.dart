import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/context_extensions.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/features/onboarding/presentation/views/widgets/onboarding_pgview.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  late PageController pageController;
  var currentPg = 0;

  @override
  void initState() {
    super.initState();

    // initialize controller
    pageController = PageController( initialPage: 0);
    pageController.addListener(() {
      setState(() {
        currentPg = pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    //dispose controller
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnboardingPgview( currentPg: currentPg,)),
        DotsIndicator(
          dotsCount: 2,
          position: 0,
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor,
            color: AppColors.primaryColor.withOpacity(0.5),
            // size: const Size.square(9.0),
            // activeSize: const Size(18.0, 9.0),
            // activeShape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
        SizedBox(
          height: 29.h,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: CustomButton(hint: context.loc.startNowButton, onTap: () {}),
        ),
        SizedBox(
          height: 43.h,
        ),
      ],
    );
  }
}
