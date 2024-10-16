import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:si_sehat/core/networking/api_constants.dart';
import 'package:si_sehat/si_sehat/screens/book_an_appointment/data/models/specialization_response.dart';
import 'package:si_sehat/si_sehat/screens/book_an_appointment/data/network/specialization_api_constants.dart';

part 'specialization_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class SpecializationApiService {
  factory SpecializationApiService(Dio dio) = _SpecializationApiService;

  @GET(SpecializationApiConstants.specializationEP)
  Future<SpecializationResponse> getSpecializationData();
}
