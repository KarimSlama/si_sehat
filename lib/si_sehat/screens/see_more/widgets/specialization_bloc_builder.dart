import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:si_sehat/core/book_appointments_and_doctors/controller/specialization_cubit.dart';
import 'package:si_sehat/core/book_appointments_and_doctors/controller/specialization_state.dart';
import 'package:si_sehat/core/theming/app_colors/app_colors.dart';
import 'package:si_sehat/si_sehat/screens/book_an_appointment/widgets/specialization_list_widget.dart';
import 'package:si_sehat/si_sehat/screens/see_more/widgets/see_more_specialization_list_view.dart';

class SeeMoreBlocBuilder extends StatelessWidget {
  const SeeMoreBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpecializationCubit, SpecializationState>(
        buildWhen: (previous, current) =>
            current is SpecializationLoading ||
            current is SpecializationSuccess ||
            current is SpecializationError,
        builder: (context, state) {
          return state.maybeWhen(
            specializationLoading: () => setupLoading(),
            specializationSuccess: (specializationResponse) =>
                setupSuccess(specializationResponse.specializationDataList),
            specializationError: (errorHandler) => Text(
                ' errorHandler.apiErrorModel.message ${errorHandler.apiErrorModel.message}'),
            orElse: () {
              return SizedBox.shrink();
            },
          );
        });
  }
}

Widget setupSuccess(specializationList) {
  return SeeMoreSpecializationListWidget(
      specializationDataList: specializationList ?? []);
}

Widget setupLoading() => SpinKitSquareCircle(color: AppColors.blue);
