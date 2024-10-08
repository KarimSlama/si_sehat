import 'package:flutter/material.dart';
import 'package:si_sehat/core/routing/routes.dart';
import 'package:si_sehat/core/theming/app_strings/app_string.dart';
import 'package:si_sehat/si_sehat/screens/register/register_screen.dart';
import 'package:si_sehat/si_sehat/screens/register_info_first_page/register_first_page_screen.dart';
import 'package:si_sehat/si_sehat/screens/splash/splash_screen.dart';
import 'package:si_sehat/si_sehat/screens/login/login_screen.dart';
import 'package:si_sehat/si_sehat/screens/on_boarding/on_boarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );
      case Routes.registerFirstPageScreen:
        return MaterialPageRoute(
          builder: (_) => const RegisterFirstPageScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (_) => const RegisterScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('${AppString.routesError}${settings.name}'),
            ),
          ),
        );
    }
  }
}
