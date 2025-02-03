import 'package:bloc/bloc.dart';
import 'package:si_sehat/core/helpers/extensions.dart';
import 'package:si_sehat/core/networking/api_error_handler.dart';
import 'package:si_sehat/si_sehat/screens/specialization/controller/specialization_state.dart';
import 'package:si_sehat/si_sehat/screens/specialization/data/models/specialization_response.dart';
import 'package:si_sehat/si_sehat/screens/specialization/data/repo/specialization_repo.dart';

class SpecializationCubit extends Cubit<SpecializationState> {
  final SpecializationRepo specializationRepo;

  SpecializationCubit(this.specializationRepo)
      : super(SpecializationState.initial());

  List<SpecializationData> specializationDataList = [];

  void getSpecialization() async {
    emit(SpecializationState.specializationLoading());
    final response = await specializationRepo.getSpecialization();
    response.when(success: (specializationResponse) {
      specializationDataList =
          specializationResponse.specializationDataList ?? [];
      getDoctorsList(specializationId: specializationDataList.first.id);
      emit(SpecializationState.specializationSuccess(specializationDataList));
    }, failure: (error) {
      emit(SpecializationState.specializationError(error));
    });
  }

  getDoctorsList({required int? specializationId}) {
    List<Doctors?>? doctorsList =
        getDoctorsBySpecializationId(specializationId);

    if (doctorsList.isNullOrEmpty()) {
      print('error doctors list is null');
      emit(SpecializationState.specializationLoading());
    } else if (!doctorsList.isNullOrEmpty()) {
      emit(SpecializationState.doctorsSuccess(doctorsList));
      print('doctorsList is ${doctorsList?[specializationId!]?.id}');
    } else
      emit(SpecializationError(ErrorHandler.handle('No Doctors Found')));
  }

  /// Return Method that Filter Doctors By Specialization ID
  List<Doctors?>? getDoctorsBySpecializationId(specializationId) {
    return specializationDataList
        .firstWhere((specialization) => specialization.id == specializationId)
        .doctorsList;
  }
}
