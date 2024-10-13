import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:si_sehat/core/helpers/app_regex.dart';
import 'package:si_sehat/core/theming/app_strings/app_string.dart';
import 'package:si_sehat/core/widgets/text_form_widget.dart';
import 'package:si_sehat/si_sehat/screens/register/controller/register_cubit.dart';

class RegisterFormWidget extends StatefulWidget {
  const RegisterFormWidget({super.key});

  @override
  State<RegisterFormWidget> createState() => _RegisterFormWidgetState();
}

bool isPasswordObscureText = true;
bool isPasswordConfirmationObscureText = true;
late TextEditingController passwordController;

class _RegisterFormWidgetState extends State<RegisterFormWidget> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<RegisterCubit>().formKey,
      child: Column(
        children: [
          AppTextForm(
              inputType: TextInputType.name,
              controller: context.read<RegisterCubit>().nameController,
              label: AppString.fullName,
              prefixIcon: IconBroken.Profile,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid User Name';
                }
              }),
          SizedBox(height: 16.h),
          AppTextForm(
              inputType: TextInputType.emailAddress,
              controller: context.read<RegisterCubit>().emailController,
              label: AppString.email,
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
              inputType: TextInputType.phone,
              controller: context.read<RegisterCubit>().phoneController,
              label: AppString.phone,
              prefixIcon: IconBroken.Call,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid Phone';
                }
              }),
          SizedBox(height: 16.h),
          AppTextForm(
              inputType: TextInputType.visiblePassword,
              controller: passwordController,
              label: AppString.password,
              isObscureText: isPasswordObscureText,
              prefixIcon: IconBroken.Password,
              suffixIcon: isPasswordObscureText ? IconBroken.Show : IconBroken.Hide,
              suffixPressed: () {
                setState(() {
                  isPasswordObscureText = !isPasswordObscureText;
                });
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid Password';
                }
              }),
          SizedBox(height: 16.h),
          AppTextForm(
              inputType: TextInputType.visiblePassword,
              controller:
                  context.read<RegisterCubit>().confirmPasswordController,
              label: AppString.confirmPassword,
              isObscureText: isPasswordConfirmationObscureText,
              prefixIcon: IconBroken.Password,
              suffixIcon: isPasswordConfirmationObscureText ? IconBroken.Show : IconBroken.Hide,
              suffixPressed: () {
                setState(() {
                  isPasswordConfirmationObscureText =
                      !isPasswordConfirmationObscureText;
                });
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Password doesn\'t match';
                }
              }),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    passwordController = context.read<RegisterCubit>().passwordController;
  }
}
