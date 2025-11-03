import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';

class CustomFormTextfield extends StatelessWidget {
  const CustomFormTextfield(
      {super.key,
      required this.textInputType,
      required this.hintText,
      this.suffixIcon, this.onSaved});

  final TextInputType textInputType;
  final String hintText;
  final Widget? suffixIcon;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'This field is required';
        }
        return null;
      },
      keyboardType: textInputType,
      decoration: InputDecoration(
        labelText: hintText,
        hintStyle: TextStyle(
          fontSize: 14.sp,
          color: AppColors.grayscale400,
          fontWeight: FontWeight.w700,
        ),
        suffixIcon: Padding(
          padding: EdgeInsets.only(left: 18.w),
          child: suffixIcon,
        ),
        filled: true,
        fillColor: AppColors.textFieldFillColor,
        enabled: true,
        enabledBorder: buildBorder(),
        border: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4.r),
      borderSide: const BorderSide(
        width: 1,
        color: AppColors.textFieldBorderColor,
      ),
    );
  }
}
