import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:si_sehat/core/helpers/extensions.dart';
import 'package:si_sehat/si_sehat/screens/doctors/widgets/doctors_details_list_view_widget.dart';
import 'package:si_sehat/si_sehat/screens/doctors/widgets/doctors_filter_drop_menu.dart';
import 'package:si_sehat/si_sehat/screens/doctors/widgets/doctors_search_and_filter_widget.dart';
import 'package:si_sehat/si_sehat/screens/specialization/data/models/specialization_response.dart';

class DoctorsWithSpecializationScreen extends StatelessWidget {
  final List<Doctors> doctors;

  const DoctorsWithSpecializationScreen(
      {super.key, required this.doctors});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => context.pop(),
            icon: Icon(IconBroken.Arrow___Left_2)),
        title: Text(doctors.first.specialization!.name ?? ''),
        centerTitle: true,
      ),
      body: Column(
        spacing: 12.h,
        children: [
          DoctorsSearchAndFilterWidget(),
          DoctorsFilterDropMenuWidget(),
          Expanded(child: DoctorsDetailsListViewWidget(doctors: doctors)),
        ],
      ),
    );
  }
}
