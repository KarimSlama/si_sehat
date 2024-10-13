import 'package:si_sehat/core/networking/api_error_handler.dart';
import 'package:si_sehat/core/networking/api_result.dart';
import 'package:si_sehat/core/networking/api_service.dart';
import 'package:si_sehat/si_sehat/screens/login/data/models/login_request_body.dart';
import 'package:si_sehat/si_sehat/screens/login/data/models/login_response.dart';

class LoginRepo {
  final ApiService apiService;

  LoginRepo(this.apiService);

  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
