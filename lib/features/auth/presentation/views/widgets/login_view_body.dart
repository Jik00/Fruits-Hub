import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/context_extensions.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/custom_form_textfield.dart';
import 'package:fruits_hub/features/auth/presentation/views/widgets/or_divider.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 17.w),
        child: Column(
          children: [
            SizedBox(height: 24.h),
            CustomFormTextfield(
                textInputType: TextInputType.emailAddress,
                hintText: context.loc.email),
            SizedBox(height: 16.h),
            CustomFormTextfield(
              textInputType: TextInputType.visiblePassword,
              hintText: context.loc.password,
              suffixIcon: const Icon(Icons.remove_red_eye),
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
            CustomButton(hint: context.loc.loginTitle, onTap: () {}),
            SizedBox(height: 33.h),
            Text.rich(
              TextSpan(children: [
                TextSpan(
                  text: context.loc.noAccount,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.grayscale400,
                  ),
                ),
                TextSpan(
                  text: ' ${context.loc.signUp}',
                  recognizer: TapGestureRecognizer()..onTap = () {},
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryColor,
                  ),
                ),
              ]),
            ),
            SizedBox(height: 33.h),
            const OrDivider(),
            SizedBox(height: 21.h),
          ],
        ),
      ),
    );
  }
}
