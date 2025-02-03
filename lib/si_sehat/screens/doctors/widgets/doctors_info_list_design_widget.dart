import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:si_sehat/core/helpers/spacing.dart';
import 'package:si_sehat/core/theming/app_colors/app_colors.dart';
import 'package:si_sehat/si_sehat/screens/specialization/data/models/specialization_model.dart';
import 'package:si_sehat/si_sehat/screens/specialization/data/models/specialization_response.dart';

class DoctorsDetailsWidget extends StatelessWidget {
  final List<Doctors> doctorsData;
  final int index;

  const DoctorsDetailsWidget(
      {super.key, required this.doctorsData, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsetsDirectional.symmetric(horizontal: 12, vertical: 14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 85.w,
            height: 80.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.all(Radius.circular(20)),
              border: Border.all(
                style: BorderStyle.solid,
                color: AppColors.lightBlue,
                width: 1.w,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                doctorsImage[index].image,
                height: 50.h,
                width: 50.w,
              ),
            ),
          ),
          horizontalSpace(25),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 160.w,
                child: Text(
                  doctorsData[index].name ?? 'Karim Slama',
                  softWrap: false,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(fontWeight: FontWeight.w700, fontSize: 17.sp),
                ),
              ),
              verticalSpace(7),
              Text(
                doctorsData[index].specialization?.name ?? '',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontSize: 13.sp,
                      color: AppColors.silver,
                    ),
              ),
              verticalSpace(7),
              Text(
                '${doctorsData[index].appointPrice != null ? '\$ ${doctorsData[index].appointPrice}' : '\$100'}',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontSize: 15.sp, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          Spacer(),
          Icon(
            Icons.star,
            color: Colors.amber,
          ),
          horizontalSpace(3),
          Text('4.4'),
        ],
      ),
    );
  }
}
