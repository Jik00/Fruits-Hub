import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_hub/core/utils/app_images.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    //future builder // lw fe complicated logic, do seperate method
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, 'OnboardingView');
    });

    super.initState();
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
}
