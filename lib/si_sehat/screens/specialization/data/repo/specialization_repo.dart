import 'package:si_sehat/core/networking/api_error_handler.dart';
import 'package:si_sehat/core/networking/api_result.dart';
import 'package:si_sehat/core/networking/specialization_and_doctors_api/specialization_api_service.dart';
import 'package:si_sehat/si_sehat/screens/specialization/data/models/specialization_response.dart';

class SpecializationRepo {
  final SpecializationApiService specializationApiService;

  SpecializationRepo(this.specializationApiService);

  Future<ApiResult<SpecializationResponse>> getSpecialization() async {
    try {
      final response = await specializationApiService.getSpecializationData();
      return ApiResult.success(response);
    } catch (error) {
      print('Specialization Repo Error is ${error.toString()}');
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
