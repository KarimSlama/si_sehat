import 'package:flutter/material.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:si_sehat/core/helpers/extensions.dart';
import 'package:si_sehat/core/helpers/spacing.dart';
import 'package:si_sehat/core/routing/routes.dart';
import 'package:si_sehat/core/theming/app_strings/app_string.dart';
import 'package:si_sehat/si_sehat/screens/book_an_appointment/widgets/specialization_bloc_builder.dart';
import 'package:si_sehat/si_sehat/screens/home/widget/search_and_filter_widget.dart';

class BookAnAppointment extends StatelessWidget {
  const BookAnAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => context.pushNamed(Routes.homeScreen),
            icon: Icon(IconBroken.Arrow___Left_2)),
        title: Text(AppString.bookAnAppointment),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppString.medicalSpecialties,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontSize: 16, fontWeight: FontWeight.w800),
            ),
            verticalSpace(10),
            Text(
              AppString.wideSelectionOfDoctorSpecialties,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontSize: 13, fontWeight: FontWeight.w600),
            ),
            verticalSpace(20),
            SearchAndFilterWidget(),
            verticalSpace(30),
            SpecializationBlocBuilder(),
            Align(
              alignment: AlignmentDirectional.bottomStart,
              child: TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('See More'),
                      Icon(IconBroken.Arrow___Right_2)
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
