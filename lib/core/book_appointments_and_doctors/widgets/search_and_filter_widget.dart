import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:si_sehat/core/helpers/spacing.dart';
import 'package:si_sehat/core/theming/app_colors/app_colors.dart';
import 'package:si_sehat/core/theming/app_strings/app_string.dart';
import 'package:si_sehat/core/widgets/text_form_widget.dart';

class SearchAndFilterWidget extends StatelessWidget {
  const SearchAndFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppTextForm(
          radius: 15,
          width: 280.w,
          height: 50.h,
          inputType: TextInputType.text,
          hint: AppString.symptomsDiseases,
          controller: searchController,
          prefixIcon: IconBroken.Search,
        ),
        horizontalSpace(13),
        IconButton(
            onPressed: () {},
            icon: Icon(
              IconBroken.Filter,
              color: AppColors.blue,
              size: 25.sp,
            )),
      ],
    );
  }
}
