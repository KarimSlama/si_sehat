import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:si_sehat/core/networking/api_constants.dart';
import 'package:si_sehat/si_sehat/screens/login/data/models/login_request_body.dart';
import 'package:si_sehat/si_sehat/screens/login/data/models/login_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);
}
