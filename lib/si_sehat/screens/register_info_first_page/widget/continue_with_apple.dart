import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:si_sehat/core/theming/app_colors/app_colors.dart';
import 'package:si_sehat/core/theming/app_strings/app_string.dart';

class ContinueWithApple extends StatelessWidget {
  const ContinueWithApple({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AppColors.blue),
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/icons/apple.svg',
            width: 25,
            color: AppColors.white,
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(AppString.signInWithApple,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.white, fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}
