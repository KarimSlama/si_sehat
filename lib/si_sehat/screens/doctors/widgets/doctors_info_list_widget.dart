// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:si_sehat/core/book_appointments_and_doctors/controller/specialization_cubit.dart';
// import 'package:si_sehat/core/book_appointments_and_doctors/data/models/specialization_response.dart';
// import 'package:si_sehat/core/helpers/separator.dart';
// import 'package:si_sehat/si_sehat/screens/doctors/widgets/doctors_info_list_design_widget.dart';
//
// class DoctorsInfoListWidget extends StatelessWidget {
//   final List<Doctors?>? doctorsSpecializationList;
//
//   const DoctorsInfoListWidget(
//       {super.key, required this.doctorsSpecializationList});
//
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: ListView.separated(
//           itemBuilder: (context, index) => DoctorsInfoListDesignWidget(
//                 doctorsData: doctorsSpecializationList![index]!,
//                 index: index,
//               ),
//           separatorBuilder: (context, index) => separator(),
//           itemCount: doctorsSpecializationList!.length),
//     );
//   }
// }
