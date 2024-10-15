import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:si_sehat/core/helpers/extensions.dart';
import 'package:si_sehat/core/helpers/separator.dart';
import 'package:si_sehat/core/helpers/spacing.dart';
import 'package:si_sehat/core/routing/routes.dart';
import 'package:si_sehat/core/theming/app_strings/app_string.dart';
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

            ///Modify it later
            SizedBox(
              height: 350.h,
              child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/book_appointment.svg',
                        height: 50,
                      ),
                      horizontalSpace(12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ear, Nose & Throat',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          verticalSpace(8),
                          Text(
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            'Wide selection of doctor\'s specialties',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            IconBroken.Arrow___Right_2,
                          )),
                    ],
                  ),
                ),
                separatorBuilder: (context, index) => separator(),
                itemCount: 4,
              ),
            ),
            TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('See More'),
                    Icon(IconBroken.Arrow___Right_2)
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
