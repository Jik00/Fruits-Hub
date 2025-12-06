import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/context_extensions.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/custom_form_textfield.dart';
import 'package:fruits_hub/core/widgets/password_field.dart';
import 'package:fruits_hub/features/auth/presentation/views/signup_view.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/signin_with_listtile.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/no_account_widget.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/or_divider.dart';

class SignInViewBody extends StatefulWidget {
  const SignInViewBody({super.key});

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

late String email, password;

class _SignInViewBodyState extends State<SignInViewBody> {
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
                  textInputType: TextInputType.emailAddress,
                  hintText: context.loc.email,
                  onSaved: (value) {
                    email = value!;
                  }),
              SizedBox(height: 16.h),
              PasswordField(
                onSaved: (value) {
                  password = value!;
                },
              ),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    context.loc.forgotPassword,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.lightPrimaryColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 33.h),
              CustomButton(
                hint: context.loc.loginTitle,
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
              ),
              SizedBox(height: 33.h),
              NoAccountWidget(
                text1: context.loc.noAccount,
                text2: context.loc.signUp,
                onTap: () {
                  Navigator.pushNamed(context, SignupView.routeName);
                },
              ),
              SizedBox(height: 33.h),
              const OrDivider(),
              SizedBox(height: 21.h),
              SignInWithListtile(
                title: context.loc.loginWithGoogle,
                icon: Assets.assetsImagesGoogleIcons,
              ),
              SizedBox(
                height: 16.h,
              ),
              SignInWithListtile(
                title: context.loc.loginWithApple,
                icon: Assets.assetsImagesAppleCons,
              ),
              SizedBox(
                height: 16.h,
              ),
              SignInWithListtile(
                title: context.loc.loginWithFacebook,
                icon: Assets.assetsImagesFacebookIcons,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
