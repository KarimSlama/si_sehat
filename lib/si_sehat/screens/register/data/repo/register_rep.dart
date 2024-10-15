import 'package:si_sehat/core/networking/api_error_handler.dart';
import 'package:si_sehat/core/networking/api_result.dart';
import 'package:si_sehat/core/networking/api_service.dart';
import 'package:si_sehat/si_sehat/screens/register/data/models/register_request_body.dart';
import 'package:si_sehat/si_sehat/screens/register/data/models/register_response.dart';

class RegisterRepo {
  final ApiService apiService;

  RegisterRepo(this.apiService);

  Future<ApiResult<RegisterResponse>> register(
      RegisterRequestBody registerRequestBody) async {
    try {
      final response = await apiService.register(registerRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
