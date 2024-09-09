import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:si_sehat/core/theming/app_colors/app_colors.dart';
import 'package:si_sehat/si_sehat/screens/on_boarding/boarding_model.dart';
import 'package:si_sehat/si_sehat/screens/on_boarding/widgets/on_boarding_items.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewImages extends StatelessWidget {
  const PageViewImages({super.key});

  @override
  Widget build(BuildContext context) {

    var pageController = PageController();
    bool isLast = false;

    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 600.h,
          child: PageView.builder(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) =>
                OnBoardingItems(boardingModel: boarding[index]),
            itemCount: boarding.length,
          ),
        ),
        SmoothPageIndicator(
          controller: pageController,
          count: boarding.length,
          effect: const ExpandingDotsEffect(
            dotWidth: 12.0,
            dotHeight: 12.0,
            spacing: 5.0,
            expansionFactor: 3.0,
            dotColor: AppColors.blue,
            activeDotColor: AppColors.lightBlack,
          ),
        ),
      ],
    );

  }
}
