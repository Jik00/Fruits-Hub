import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/context_extensions.dart';
import 'package:fruits_hub/core/widgets/custom_appbar.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/signin_view_body.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  static const routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: context.loc.loginTitle),
      body: const SignInViewBody(),
    );
  }
}
