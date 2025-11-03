import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/context_extensions.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/custom_form_textfield.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/no_account_widget.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/signup_terms_checkbox.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String name, email, password;
class _SignupViewBodyState extends State<SignupViewBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 17.w),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(height: 24.h),
              CustomFormTextfield(
                  textInputType: TextInputType.name,
                  hintText: context.loc.fullName,
                  onSaved: (value) {
                    name = value!;
                  }),
              SizedBox(height: 16.h),
              CustomFormTextfield(
                  textInputType: TextInputType.emailAddress,
                  hintText: context.loc.email, 
                  onSaved: (value) {
                    email = value!;
                  }),
              SizedBox(height: 16.h),
              CustomFormTextfield(
                textInputType: TextInputType.visiblePassword,
                hintText: context.loc.password,
                onSaved: (value) {
                  password = value!;
                },
                suffixIcon: Icon(Icons.remove_red_eye,
                    color: AppColors.grayscale400.withOpacity(0.7)),
              ),
              SizedBox(height: 16.h),
              const SignupTermsCheckbox(),
              SizedBox(height: 33.h),
              CustomButton(hint: context.loc.signUp, onTap: () {}),
              SizedBox(height: 33.h),
              NoAccountWidget(
                text1: context.loc.haveAccount,
                text2: context.loc.loginTitle,
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
