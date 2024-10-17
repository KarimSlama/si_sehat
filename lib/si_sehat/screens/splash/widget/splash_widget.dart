import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:si_sehat/core/helpers/extensions.dart';
import 'package:si_sehat/core/helpers/spacing.dart';
import 'package:si_sehat/core/routing/routes.dart';
import 'package:si_sehat/core/theming/app_colors/app_colors.dart';
import 'package:si_sehat/core/theming/app_strings/app_string.dart';
import 'package:si_sehat/si_sehat/screens/home/home_screen.dart';
import 'package:si_sehat/si_sehat/screens/login/login_screen.dart';

class SplashWidget extends StatefulWidget {
  const SplashWidget({super.key});

  @override
  State<SplashWidget> createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(height: 70.h, 'assets/icons/splash_logo.svg'),
            verticalSpace(12),
            Text(
              AppString.helloCheersDesign,
              style: TextStyle(
                  color: AppColors.white,
                  fontSize: 26.sp,
                  fontWeight: FontWeight.w600),
            ),
            verticalSpace(8),
            Text(
              AppString.welcomeToSiSehatMobileApps,
              style: TextStyle(
                  color: AppColors.white,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }

  Future navigateToHome() async {
    await Future.delayed(const Duration(seconds: 4), () {});
  }

  @override
  void initState() {
    super.initState();
    navigateToHome().then(
      (value) => context.pushNamedAndRemoveUntil(
        Routes.loginScreen,
        predicate: (route) => false,
      ),
    );
  }
}
