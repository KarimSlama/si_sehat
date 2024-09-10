import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:si_sehat/core/theming/app_colors/app_colors.dart';
import 'package:si_sehat/core/theming/app_strings/app_string.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AppColors.grey),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStateProperty.all(
          Size(double.infinity, 60.h),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      child: Text(AppString.signUp,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: AppColors.light, fontWeight: FontWeight.w800 )),
    );
  }
}
