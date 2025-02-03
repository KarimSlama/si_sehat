import 'package:flutter/material.dart';
import 'package:si_sehat/si_sehat/screens/doctors/widgets/doctors_info_list_design_widget.dart';
import 'package:si_sehat/si_sehat/screens/specialization/data/models/specialization_response.dart';

class DoctorsDetailsListViewWidget extends StatelessWidget {
  final List<Doctors> doctors;
  const DoctorsDetailsListViewWidget({super.key, required this.doctors});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => DoctorsDetailsWidget(
        doctorsData: doctors,
        index: index,
      ),
      itemCount: doctors.length,
    );
  }
}
