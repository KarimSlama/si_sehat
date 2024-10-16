import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:si_sehat/core/networking/api_error_handler.dart';
import 'package:si_sehat/si_sehat/screens/book_an_appointment/data/models/specialization_response.dart';

part 'specialization_state.freezed.dart';

@freezed
class SpecializationState<T> with _$SpecializationState<T> {
  const factory SpecializationState.initial() = _Initial;

  const factory SpecializationState.specializationLoading() =
      SpecializationLoading;

  const factory SpecializationState.specializationSuccess(
      SpecializationResponse specializationResponse) = SpecializationSuccess;

  const factory SpecializationState.specializationError(
      ErrorHandler errorHandler) = SpecializationError;
}
