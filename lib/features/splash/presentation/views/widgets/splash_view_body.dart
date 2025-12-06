import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/services/shared_preferences_singleton.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/features/auth/presentation/views/signin_view.dart';
import 'package:fruits_hub/features/onboarding/presentation/views/onboarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    initNavigation();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              SvgPicture.asset(Assets.assetsImagesSplash1),
            ],
          ),
          SvgPicture.asset(Assets.assetsImagesSplash2),
          SvgPicture.asset(Assets.assetsImagesSplash3, fit: BoxFit.fill),
        ],
      ),
    );
  }

  void initNavigation() {
    bool isOnboardingSeen = Prefs.getBool(kIsOnboardingSeen);
    Future.delayed(
      const Duration(seconds: 3),
      () {
        if (isOnboardingSeen) {
          Navigator.pushReplacementNamed(context, SignInView.routeName);
        } else {
          Navigator.pushReplacementNamed(context, OnboardingView.routeName);
        }
      },
    );
  }
}
