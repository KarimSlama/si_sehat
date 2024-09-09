import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:si_sehat/core/theming/app_colors/app_colors.dart';
import 'package:si_sehat/si_sehat/screens/on_boarding/boarding_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingItems extends StatelessWidget {
  final BoardingModel boardingModel;

  const OnBoardingItems({super.key, required this.boardingModel});

  get pageController => PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Image.asset(
            boardingModel.image,
            fit: BoxFit.cover,
            width: double.infinity,
            height: 500.h,
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.symmetric(
              horizontal: 14, vertical: 26),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SmoothPageIndicator(
                controller: pageController,
                count: boarding.length,
                effect: const ExpandingDotsEffect(
                  dotWidth: 10.0,
                  dotHeight: 4.0,
                  spacing: 5.0,
                  expansionFactor: 3.0,
                  dotColor: AppColors.grey,
                  activeDotColor: AppColors.blue,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                boardingModel.title,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontWeight: FontWeight.bold, fontSize: 24.sp),
              ),
              SizedBox(height: 18.h),
              Text(
                boardingModel.body,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: AppColors.lightBlack, fontSize: 16.sp),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
