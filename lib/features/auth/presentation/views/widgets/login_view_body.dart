import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/utils/context_extensions.dart';
import 'package:fruits_hub/core/widgets/custom_form_textfield.dart';

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
          ],
        ),
      ),
    );
  }
}
