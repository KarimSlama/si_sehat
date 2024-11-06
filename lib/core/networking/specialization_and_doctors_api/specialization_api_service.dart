import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:si_sehat/core/book_appointments_and_doctors/data/models/specialization_response.dart';
import 'package:si_sehat/core/networking/register_api/register_api_constants.dart';
import 'package:si_sehat/core/networking/specialization_and_doctors_api/specialization_api_constants.dart';

part 'specialization_api_service.g.dart';

@RestApi(baseUrl: RegisterApiConstants.apiBaseUrl)
abstract class SpecializationApiService {
  factory SpecializationApiService(Dio dio) = _SpecializationApiService;

  @GET(SpecializationApiConstants.specializationEP)
  Future<SpecializationResponse> getSpecializationData();
}
