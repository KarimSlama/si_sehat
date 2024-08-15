import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:si_sehat/core/theming/app_colors/app_colors.dart';
import 'package:si_sehat/core/theming/app_strings/app_string.dart';
import 'package:si_sehat/si_sehat/screens/on_boarding/on_boarding_screen.dart';

class SplashWidget extends StatefulWidget {
  const SplashWidget({super.key});

  @override
  State<SplashWidget> createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: SvgPicture.asset(height: 70, 'assets/icons/logo.svg')),
          const Padding(
            padding: EdgeInsetsDirectional.only(bottom: 20),
            child: Align(
              /// TODO: I'll change that later.
              child: Text(
                AppString.siSehatMobileApp,
                style: TextStyle(
                    color: AppColors.blue, fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
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
      (value) => Navigator.pushAndRemoveUntil(
          context,
          PageRouteBuilder(
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              const begin = Offset(0.0, 1.0);
              const end = Offset.zero;
              const curve = Curves.ease;

              final tween = Tween(begin: begin, end: end);
              final curvedAnimation = CurvedAnimation(
                parent: animation,
                curve: curve,
              );
              return SlideTransition(
                position: tween.animate(curvedAnimation),
                child: child,
              );
            },
            pageBuilder: (context, animation, secondaryAnimation) =>
                const OnBoardingScreen(),
          ),
          (route) => false),
    );
  }
}
