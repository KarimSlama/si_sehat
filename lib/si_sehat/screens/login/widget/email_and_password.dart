import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:si_sehat/core/helpers/app_regex.dart';
import 'package:si_sehat/core/theming/app_strings/app_string.dart';
import 'package:si_sehat/core/widgets/text_form_widget.dart';
import 'package:si_sehat/si_sehat/screens/login/controller/login_cubit.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscure = true;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppTextForm(
              inputType: TextInputType.emailAddress,
              controller: context.read<LoginCubit>().emailController,
              label: AppString.email,
              hint: AppString.email,
              prefixIcon: IconBroken.Message,
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isEmailValid(value)) {
                  return 'Please enter a valid Email';
                }
              }),
          SizedBox(height: 16.h),
          AppTextForm(
              inputType: TextInputType.visiblePassword,
              controller: passwordController,
              label: AppString.password,
              hint: AppString.password,
              prefixIcon: IconBroken.Password,
              suffixIcon: isObscure ? IconBroken.Show : IconBroken.Hide,
              isObscureText: isObscure,
              suffixPressed: () {
                setState(() {
                  isObscure = !isObscure;
                });
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid Password';
                }
              }),
        ],
      ),
    );
  }
}
