import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:si_sehat/core/helpers/app_constants.dart';
import 'package:si_sehat/core/helpers/shared_preference.dart';
import 'package:si_sehat/core/networking/dio_factory.dart';
import 'package:si_sehat/si_sehat/screens/login/controller/login_state.dart';
import 'package:si_sehat/si_sehat/screens/login/data/models/login_request_body.dart';
import 'package:si_sehat/si_sehat/screens/login/data/repo/login_repo.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo loginRepo;

  LoginCubit(this.loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginState() async {
    emit(const LoginState.loading());
    final response = await loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );

    response.when(success: (loginResponse) {
      saveUserToke(loginResponse.userData!.token.toString());
      emit(LoginState.success(loginResponse));
    }, failure: (error) {
      emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
    });
  }

  Future<void> saveUserToke(token) async {
    await SharedPreference.setData(SharedPreferenceKey.userTokenKey, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
