import 'package:flutter/material.dart';
import 'package:si_sehat/core/routing/app_router.dart';
import 'package:si_sehat/core/service_locator/dependency_injection.dart';
import 'package:si_sehat/se_sehat_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async{
  setUpGetIt();
  await ScreenUtil.ensureScreenSize();
  runApp(AppointmentApp(
    appRouter: AppRouter(),
  ));
}
