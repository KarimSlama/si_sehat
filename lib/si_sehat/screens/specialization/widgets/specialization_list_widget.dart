import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:si_sehat/core/helpers/extensions.dart';
import 'package:si_sehat/core/helpers/separator.dart';
import 'package:si_sehat/core/helpers/spacing.dart';
import 'package:si_sehat/core/routing/routes.dart';
import 'package:si_sehat/core/theming/app_strings/app_string.dart';
import 'package:si_sehat/si_sehat/screens/specialization/controller/specialization_cubit.dart';
import 'package:si_sehat/si_sehat/screens/specialization/data/models/specialization_model.dart';
import 'package:si_sehat/si_sehat/screens/specialization/data/models/specialization_response.dart';

class SpecializationListWidget extends StatelessWidget {
  final List<SpecializationData> specializationData;
  const SpecializationListWidget({super.key, required this.specializationData});

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
                      specializationData[index].name ?? 'Ear, Nose & Throat',
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
                    onPressed: () {
                      context.pushNamed(Routes.doctorsWithSpecializationScreen,
                          arguments: specializationData[index].doctorsList);
                    },
                    icon: Icon(
                      IconBroken.Arrow___Right_2,
                    )),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => separator(),
        itemCount:
            specializationData.length < 4 ? specializationData.length : 4,
      ),
    );
  }
}
