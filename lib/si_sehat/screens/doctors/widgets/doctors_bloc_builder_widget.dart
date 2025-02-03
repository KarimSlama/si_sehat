// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:si_sehat/core/theming/app_colors/app_colors.dart';
// import 'package:si_sehat/si_sehat/screens/doctors/widgets/doctors_info_list_widget.dart';
//
// class DoctorsBlocBuilderWidget extends StatelessWidget {
//   const DoctorsBlocBuilderWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<SpecializationCubit, SpecializationState>(
//         buildWhen: (previous, current) =>
//             current is DoctorsLoading ||
//             current is DoctorsSuccess ||
//             current is DoctorsError,
//         builder: (context, state) {
//           return state.maybeWhen(
//             doctorsLoading: () => setupLoading(),
//             doctorsSuccess: (doctorsDataList) => setupSuccess(doctorsDataList),
//             doctorsError: (errorHandler) => Text(
//                 ' errorHandler.apiErrorModel.message ${errorHandler.apiErrorModel.message.toString()}'),
//             orElse: () {
//               return SizedBox.shrink();
//             },
//           );
//         });
//   }
// }
//
// Widget setupSuccess(List<Doctors?>? doctorsListItem) {
//   return DoctorsInfoListWidget(doctorsSpecializationList: doctorsListItem);
// }
//
// Widget setupLoading() => SpinKitSquareCircle(color: AppColors.blue);
