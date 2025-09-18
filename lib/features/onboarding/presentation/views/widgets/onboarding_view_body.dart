import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hub/features/onboarding/presentation/views/widgets/onboarding_pgview.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(child: OnboardingPgview()),
        DotsIndicator(dotsCount: 2),
      ],
    );
  }
}
