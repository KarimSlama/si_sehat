import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:si_sehat/core/book_appointments_and_doctors/data/models/specialization_model.dart';
import 'package:si_sehat/core/book_appointments_and_doctors/data/models/specialization_response.dart';
import 'package:si_sehat/core/helpers/separator.dart';
import 'package:si_sehat/core/helpers/spacing.dart';
import 'package:si_sehat/core/theming/app_strings/app_string.dart';

class SeeMoreSpecializationListWidget extends StatelessWidget {
  final List<SpecializationData?> specializationDataList;

  const SeeMoreSpecializationListWidget(
      {super.key, required this.specializationDataList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 16.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  specialization[index].icon,
                  height: 50.h,
                  width: 50.w,
                ),
                horizontalSpace(12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      specializationDataList[index]?.name ??
                          'Ear, Nose & Throat',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w600),
                    ),
                    verticalSpace(8),
                    Text(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      AppString.wideSelectionOfDoctorSpecialties,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: 12.sp, fontWeight: FontWeight.w500),
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
          );
        },
        separatorBuilder: (context, index) => separator(),
        itemCount: specializationDataList.length,
      ),
    );
  }
}
