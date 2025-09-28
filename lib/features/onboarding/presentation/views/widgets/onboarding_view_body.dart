import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/context_extensions.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/features/auth/presentation/views/login_view.dart';
import 'package:fruits_hub/features/onboarding/presentation/views/widgets/onboarding_pgview.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
    pageController = PageController(initialPage: 0);
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
        Expanded(
            child: OnboardingPgview(
          pageController: pageController,
          currentPg: currentPg,
        )),
        SmoothPageIndicator(
          count: 2,
          controller: pageController,
          effect: WormEffect(
            dotHeight: 8.h,
            dotWidth: 8.w,
            spacing: 8.w,
            dotColor: AppColors.primaryColor.withOpacity(0.5),
            activeDotColor: AppColors.primaryColor,
          ),
        ),
        SizedBox(
          height: 29.h,
        ),
        Visibility(
          visible: currentPg == 1,
          maintainSize: true,
          maintainAnimation: true,
          maintainState: true,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: CustomButton(
                hint: context.loc.startNowButton,
                onTap: () => Navigator.pushReplacementNamed(
                    context, LoginView.routeName)),
          ),
        ),
        SizedBox(
          height: 43.h,
        ),
      ],
    );
  }
}
