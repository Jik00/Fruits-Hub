import 'package:flutter/material.dart';
import 'package:fruits_hub/features/onboarding/presentation/views/widgets/onboarding_pgview.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(child: OnboardingPgview()),
      ],
    );
  }
}
