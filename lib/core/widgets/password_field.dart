import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/context_extensions.dart';
import 'package:fruits_hub/core/widgets/custom_form_textfield.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key, this.onSaved});

  final void Function(String?)? onSaved;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

bool obscure = true;

class _PasswordFieldState extends State<PasswordField> {
  @override
  Widget build(BuildContext context) {
    return CustomFormTextfield(
      obscure: obscure,
      textInputType: TextInputType.visiblePassword,
      hintText: context.loc.password,
      onSaved: widget.onSaved,
      suffixIcon: IconButton(
        onPressed: () => setState(() => obscure = !obscure),
        icon: Icon(obscure ? Icons.visibility_off : Icons.remove_red_eye),
        color: AppColors.grayscale400.withOpacity(0.7),
      ),
    );
  }
}
