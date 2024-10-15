import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:si_sehat/core/theming/app_colors/app_colors.dart';
import 'package:si_sehat/core/theming/app_strings/app_string.dart';

class ContinueWithGoogle extends StatelessWidget {
  const ContinueWithGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(AppColors.grey),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStateProperty.all(
          Size(double.infinity, 60.h),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            side: BorderSide(
              color: AppColors.lightBlack,
              width: .1.w,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/icons/google.svg',
            width: 25,
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(AppString.signInWithGoogle,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.black, fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}
