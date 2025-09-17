import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/features/onboarding/presentation/views/widgets/pageview_item.dart';

class OnboardingPgview extends StatelessWidget {
  const OnboardingPgview({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        PageviewItem(
          img: Assets.assetsImagesPgviewItem1Img,
          backgroundImg: Assets.assetsImagesPgviewItem1Backimg,
          subtitle: kOnboardingSubTitleItem1,
          title: Row(
            children: [
              Text(kOnboardingTitleItem1Part1),
              Text(kOnboardingTitleItem1Part2),
              Text(kOnboardingTitleItem1Part3),
            ],
          ),
        ),
      ],
    );
  }
}
