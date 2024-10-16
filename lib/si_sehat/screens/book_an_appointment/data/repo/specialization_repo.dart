import 'package:si_sehat/core/networking/api_error_handler.dart';
import 'package:si_sehat/core/networking/api_result.dart';
import 'package:si_sehat/si_sehat/screens/book_an_appointment/data/models/specialization_response.dart';
import 'package:si_sehat/si_sehat/screens/book_an_appointment/data/network/specialization_api_service.dart';

class SpecializationRepo {
  final SpecializationApiService specializationApiService;

  SpecializationRepo(this.specializationApiService);

  Future<ApiResult<SpecializationResponse>> getSpecialization() async {
    try {
      final response = await specializationApiService.getSpecializationData();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
