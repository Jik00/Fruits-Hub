import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/widgets/custom_loading_bar.dart';
import 'package:fruits_hub/features/auth/presentation/cubits/signup_cubit/signup_cubit.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/signup_view_body.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignUpViewBodyBlocConsumer extends StatelessWidget {
  const SignUpViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer< SignupCubit, SignupState>(
      listener: (context, state) {
       
      },
      builder: (context, state) {
        return ModalProgressHUD(
          progressIndicator: const CustomLoadingBar(),
          inAsyncCall: state is SignupLoading? true : false,
          child: const SignupViewBody());
      },
    );
  }
}
