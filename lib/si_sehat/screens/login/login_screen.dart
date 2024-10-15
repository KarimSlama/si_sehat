import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:si_sehat/core/helpers/extensions.dart';
import 'package:si_sehat/core/routing/routes.dart';
import 'package:si_sehat/core/theming/app_colors/app_colors.dart';
import 'package:si_sehat/core/theming/app_strings/app_string.dart';
import 'package:si_sehat/core/widgets/continue_with_apple.dart';
import 'package:si_sehat/core/widgets/continue_with_google.dart';
import 'package:si_sehat/si_sehat/screens/login/widget/email_and_password.dart';
import 'package:si_sehat/si_sehat/screens/login/widget/login_bloc_listener.dart';
import 'package:si_sehat/si_sehat/screens/login/widget/login_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Icon(IconBroken.Arrow___Left_2)),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 35.w),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppString.welcomeBac,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: AppColors.blue,
                      fontWeight: FontWeight.w700,
                      fontSize: 22.sp),
                ),
                SizedBox(height: 16.h),
                const Text(AppString.pleaseEnterAFormToLoginThisApp),
                SizedBox(height: 35.h),

                const EmailAndPassword(),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      AppString.forgotPassword,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: AppColors.light),
                    ),
                  ),
                ),
                SizedBox(height: 35.h),
                const LoginButton(),
                SizedBox(height: 16.h),
                const ContinueWithGoogle(),
                SizedBox(height: 22.h),
                const ContinueWithApple(),
                SizedBox(height: 26.h),
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
                const LoginBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
