import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:si_sehat/core/helpers/extensions.dart';
import 'package:si_sehat/core/helpers/spacing.dart';
import 'package:si_sehat/core/routing/routes.dart';
import 'package:si_sehat/core/theming/app_colors/app_colors.dart';
import 'package:si_sehat/si_sehat/screens/home/data/models/services_item_model.dart';

class GridViewSelectionsWidget extends StatelessWidget {
  const GridViewSelectionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.19,
        scrollDirection: Axis.vertical,
        children: List.generate(
          4,
              (index) => Padding(
            padding: const EdgeInsets.all(5),
            child: TextButton(
              onPressed: () {
                context.pushNamed(Routes.bookAnAppointment);
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(AppColors.grey),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                minimumSize: WidgetStateProperty.all(
                  Size(double.infinity, 30.h),
                ),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              child: Container(
                padding: EdgeInsets.all(12),
                width: 150.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.grey,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(services[index].icon),
                    verticalSpace(12),
                    Text(
                      services[index].title,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    verticalSpace(6),
                    Text(
                      services[index].subTitle,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: AppColors.silver, fontSize: 13.sp),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}