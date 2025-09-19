import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/context_extensions.dart';
import 'package:fruits_hub/features/onboarding/presentation/views/widgets/pageview_item.dart';

class OnboardingPgview extends StatelessWidget {
  const OnboardingPgview({super.key, required this.currentPg});

  final int currentPg;


  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        PageviewItem(
          isLast: currentPg == 1,
          img: Assets.assetsImagesPgviewItem1Img,
          backgroundImg: Assets.assetsImagesPgviewItem1Backimg,
          subtitle: context.loc.onboardingSubTitleItem1,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(context.loc.onboardingTitleItem1Part1),
              Text(context.loc.onboardingTitleItem1Part2),
              Text(context.loc.onboardingTitleItem1Part3),
            ],
          ),
        ),
        PageviewItem(
          isLast: currentPg == 1,
          img: Assets.assetsImagesPgviewItem2Img,
          backgroundImg: Assets.assetsImagesPgviewItem2Backimg,
          subtitle: context.loc.onboardingSubTitleItem2,
          title: Text(
            context.loc.onboardingTitleItem2,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
