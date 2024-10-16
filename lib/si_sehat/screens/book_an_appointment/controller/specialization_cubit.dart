import 'package:bloc/bloc.dart';
import 'package:si_sehat/si_sehat/screens/book_an_appointment/controller/specialization_state.dart';
import 'package:si_sehat/si_sehat/screens/book_an_appointment/data/repo/specialization_repo.dart';

class SpecializationCubit extends Cubit<SpecializationState> {
  final SpecializationRepo specializationRepo;

  SpecializationCubit(this.specializationRepo)
      : super(SpecializationState.initial());

  void emitSpecializationState() async {
    emit(SpecializationState.specializationLoading());
    final response = await specializationRepo.getSpecialization();
    response.when(success: (specializationResponse) {
      emit(SpecializationState.specializationSuccess(specializationResponse));
    }, failure: (error) {
      emit(SpecializationState.specializationError(error));
    });
  }
}
