import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:si_sehat/core/routing/routes.dart';
import 'package:si_sehat/core/service_locator/dependency_injection.dart';
import 'package:si_sehat/si_sehat/screens/doctors/doctors_with_specialization_screen.dart';
import 'package:si_sehat/si_sehat/screens/home/home_screen.dart';
import 'package:si_sehat/si_sehat/screens/login/controller/login_cubit.dart';
import 'package:si_sehat/si_sehat/screens/register/controller/register_cubit.dart';
import 'package:si_sehat/si_sehat/screens/register/register_screen.dart';
import 'package:si_sehat/si_sehat/screens/register_info_first_page/register_first_page_screen.dart';
import 'package:si_sehat/si_sehat/screens/see_more/see_more_screen.dart';
import 'package:si_sehat/si_sehat/screens/specialization/controller/specialization_cubit.dart';
import 'package:si_sehat/si_sehat/screens/specialization/data/models/specialization_response.dart';
import 'package:si_sehat/si_sehat/screens/specialization/specialization_screen.dart';
import 'package:si_sehat/si_sehat/screens/splash/splash_screen.dart';
import 'package:si_sehat/si_sehat/screens/login/login_screen.dart';
import 'package:si_sehat/si_sehat/screens/on_boarding/on_boarding_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
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
          builder: (_) => BlocProvider(
              create: (context) => getIt<LoginCubit>(),
              child: const LoginScreen()),
        );
      case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
              create: (context) => getIt<RegisterCubit>(),
              child: const RegisterScreen()),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case Routes.specializationScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) {
              return SpecializationCubit(getIt())..getSpecialization();
            },
            child: SpecializationScreen(),
          ),
        );
      case Routes.seeMoreScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) {
              return SpecializationCubit(getIt())..getSpecialization();
            },
            child: SeeMoreScreen(),
          ),
        );
      case Routes.doctorsWithSpecializationScreen:
        final doctorsArgs = settings.arguments as List<Doctors>;
        return MaterialPageRoute(
            builder: (_) => DoctorsWithSpecializationScreen(doctors: doctorsArgs));
      default:
        return null;
    }
  }
}
