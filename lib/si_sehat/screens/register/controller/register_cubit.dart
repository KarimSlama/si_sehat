import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:si_sehat/core/helpers/app_constants.dart';
import 'package:si_sehat/core/helpers/shared_preference.dart';
import 'package:si_sehat/si_sehat/screens/register/controller/register_state.dart';
import 'package:si_sehat/si_sehat/screens/register/data/models/register_request_body.dart';
import 'package:si_sehat/si_sehat/screens/register/data/repo/register_rep.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepo registerRepo;

  RegisterCubit(this.registerRepo) : super(const RegisterState.initial());

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitRegisterState() async {
    emit(const RegisterState.loading());
    final response = await registerRepo.register(RegisterRequestBody(
      name: nameController.text,
      email: emailController.text,
      phone: phoneController.text,
      gender: 0,
      password: passwordController.text,
      confirmPassword: confirmPasswordController.text,
    ));

    response.when(
      success: (registerResponse) {
        saveUserToke(registerResponse.userData?.token ?? '');
        emit(RegisterState.success(registerResponse));
      },
      failure: (error) {
        emit(RegisterState.error(error: error.apiErrorModel.message ?? ''));
      },
    );
  }

  Future<void> saveUserToke(token) async {
    await SharedPreference.setData(SharedPreferenceKey.userTokenKey, token);
  }
}
