import 'package:si_sehat/core/book_appointments_and_doctors/data/models/specialization_response.dart';
import 'package:si_sehat/core/networking/api_error_handler.dart';
import 'package:si_sehat/core/networking/api_result.dart';
import 'package:si_sehat/core/networking/specialization_and_doctors_api/specialization_api_service.dart';

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
