import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:si_sehat/core/helpers/separator.dart';
import 'package:si_sehat/core/helpers/spacing.dart';
import 'package:si_sehat/core/theming/app_strings/app_string.dart';
import 'package:si_sehat/si_sehat/screens/book_an_appointment/data/models/specialization_model.dart';
import 'package:si_sehat/si_sehat/screens/book_an_appointment/data/models/specialization_response.dart';

class SpecializationListWidget extends StatelessWidget {
  final List<SpecializationData?> specializationDataList;

  const SpecializationListWidget(
      {super.key, required this.specializationDataList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400.h,
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
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
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    verticalSpace(8),
                    Text(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      AppString.wideSelectionOfDoctorSpecialties,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(fontSize: 12, fontWeight: FontWeight.w500),
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
        itemCount: specializationDataList.length < 4
            ? specializationDataList.length
            : 4,
      ),
    );
  }
}
