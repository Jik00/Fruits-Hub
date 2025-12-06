import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/utils/context_extensions.dart';
import 'package:fruits_hub/core/widgets/custom_appbar.dart';
import 'package:fruits_hub/features/auth/presentation/cubits/signin_cubit/signin_cubit.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/signin_view_body_bloc_consumer.dart';
import '../../../../core/services/get_it_service.dart';
import '../../domain/repos/auth_repo.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  static const routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit( getIt<AuthRepo>() ),
      child: Scaffold(
        appBar: buildAppBar(context, title: context.loc.loginTitle),
        body: const SigninViewBodyBlocConsumer(),
      ),
    );
  }
}
