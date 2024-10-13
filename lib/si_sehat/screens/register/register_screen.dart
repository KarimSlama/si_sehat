import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:si_sehat/core/helpers/extensions.dart';
import 'package:si_sehat/core/routing/routes.dart';
import 'package:si_sehat/core/theming/app_colors/app_colors.dart';
import 'package:si_sehat/core/theming/app_strings/app_string.dart';
import 'package:si_sehat/core/widgets/text_form_widget.dart';
import 'package:si_sehat/si_sehat/screens/register/widget/register_bloc_listener.dart';
import 'package:si_sehat/si_sehat/screens/register/widget/register_form.dart';
import 'package:si_sehat/si_sehat/screens/register/widget/sign_up_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var nameController = TextEditingController();
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var confirmPasswordController = TextEditingController();
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
                  AppString.register,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: AppColors.blue,
                      fontWeight: FontWeight.w700,
                      fontSize: 22.sp),
                ),
                SizedBox(height: 16.h),
                const Text(AppString.pleaseEnterAFormToContinueTheRegister),
                SizedBox(height: 35.h),
                const RegisterFormWidget(),
                SizedBox(height: 35.h),
                const SignUpButton(),
                SizedBox(height: 16.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(AppString.alreadyHaveAnAccount),
                    TextButton(
                      onPressed: () {
                        context.pushNamed(Routes.loginScreen);
                      },
                      child: const Text(AppString.signIn),
                    )
                  ],
                ),
                const RegisterBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
