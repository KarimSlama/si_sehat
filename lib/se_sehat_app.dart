import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:si_sehat/core/routing/app_router.dart';
import 'package:si_sehat/core/routing/routes.dart';
import 'core/theming/app_themes/thme_light.dart';

class AppointmentApp extends StatelessWidget {
  final AppRouter appRouter;

  const AppointmentApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Se Sehat App',
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.splashScreen,
        onGenerateRoute: appRouter.generateRoute,
        theme: themeLight,
      ),
    );
  }
}
