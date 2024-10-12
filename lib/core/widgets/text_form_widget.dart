import 'package:flutter/material.dart';
import 'package:si_sehat/core/theming/app_colors/app_colors.dart';

Widget AppTextForm({
  required TextInputType inputType,
  required TextEditingController controller,
  FormFieldValidator<String>? validate,
  Function? onSubmit,
  String? label,
  String? hint,
  bool isObscureText = false,
  int? maxLength,
  IconData? prefixIcon,
  double? height,
  double? width,
  double radius = 10,
  IconData? suffixIcon,
  Function? suffixPressed,
  final Function(String?)? validator,
}) =>
    SizedBox(
      height: height,
      width: width,
      child: TextFormField(
        keyboardType: inputType,
        controller: controller,
        // validator: validate,
        validator: (value) {
          return validator!(value);
        },
        obscureText: isObscureText,
        maxLength: maxLength,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
            borderSide: const BorderSide(color: AppColors.grey, width: 1.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
            borderSide: const BorderSide(color: AppColors.grey, width: 1.0),
          ),
          fillColor: AppColors.grey,
          labelText: label,
          hintText: hint,
          prefixIcon: Icon(
            prefixIcon,
            color: AppColors.darkGrey,
          ),
          suffixIcon: suffixIcon != null
              ? IconButton(
                  onPressed: () {
                    suffixPressed!();
                  },
                  icon: Icon(suffixIcon, color: AppColors.darkGrey),
                )
              : null,
        ),
        onFieldSubmitted: (value) {
          onSubmit!(value);
        },
      ),
    );
