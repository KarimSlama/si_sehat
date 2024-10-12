import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:si_sehat/core/helpers/extensions.dart';
import 'package:si_sehat/core/routing/routes.dart';
import 'package:si_sehat/core/theming/app_strings/app_string.dart';
import 'package:si_sehat/core/widgets/continue_with_apple.dart';
import 'package:si_sehat/core/widgets/continue_with_google.dart';
import 'package:si_sehat/core/widgets/continue_with_phone.dart';

class RegisterFirstPageScreen extends StatelessWidget {
  const RegisterFirstPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            'assets/images/register_img.png',
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(
                horizontal: 12, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 12.h),
                Text(AppString.siSehat,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w900, fontSize: 24.sp)),
                SizedBox(height: 12.h),
                const Text(AppString.beginYourJourneyToBetterHealth),
                SizedBox(height: 22.h),
                const ContinueWithPhoneNumber(),
                SizedBox(height: 22.h),
                const ContinueWithGoogle(),
                SizedBox(height: 22.h),
                const ContinueWithApple(),
                SizedBox(height: 16.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(AppString.dontHaveAnAccount),
                    TextButton(
                      onPressed: () {
                        context.pushNamed(Routes.registerScreen);
                      },
                      child: const Text(AppString.signUp),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
