import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:si_sehat/core/networking/register_api/register_api_constants.dart';
import 'package:si_sehat/si_sehat/screens/login/data/models/login_request_body.dart';
import 'package:si_sehat/si_sehat/screens/login/data/models/login_response.dart';
import 'package:si_sehat/si_sehat/screens/register/data/models/register_request_body.dart';
import 'package:si_sehat/si_sehat/screens/register/data/models/register_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: RegisterApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(RegisterApiConstants.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);

  @POST(RegisterApiConstants.register)
  Future<RegisterResponse> register(
      @Body() RegisterRequestBody registerRequestBody);
}
