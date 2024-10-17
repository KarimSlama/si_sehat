import 'package:flutter/material.dart';
import 'package:si_sehat/core/helpers/app_constants.dart';
import 'package:si_sehat/core/helpers/extensions.dart';
import 'package:si_sehat/core/helpers/shared_preference.dart';
import 'package:si_sehat/core/routing/app_router.dart';
import 'package:si_sehat/core/service_locator/dependency_injection.dart';
import 'package:si_sehat/se_sehat_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  setUpGetIt();
  await WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  checkIfLoggedInUser();
  runApp(
    AppointmentApp(
      appRouter: AppRouter(),
    ),
  );
}

checkIfLoggedInUser() async {
  String userToken =
      await SharedPreference.getString(SharedPreferenceKey.userTokenKey);
  if (!userToken.isNullOrEmpty()) {
    isLoggedUser = true;
  } else {
    isLoggedUser = false;
  }
}
