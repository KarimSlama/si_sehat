import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:si_sehat/core/helpers/extensions.dart';
import 'package:si_sehat/core/theming/app_colors/app_colors.dart';
import 'package:si_sehat/core/theming/app_strings/app_string.dart';
import 'package:si_sehat/si_sehat/screens/on_boarding/boarding_model.dart';
import 'package:si_sehat/si_sehat/screens/on_boarding/widgets/on_boarding_items.dart';
import '../../../core/routing/routes.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var pageController = PageController();
    bool isLast = false;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 600.h,
            child: PageView.builder(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) =>
                  OnBoardingItems(boardingModel: boarding[index]),
              itemCount: boarding.length,
              onPageChanged: (value) {
                // the state here is not active
                if (value == boarding.length - 1) {
                  isLast = true;
                } else {
                  isLast = false;
                }
              },
              controller: pageController,
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(
                horizontal: 14, vertical: 18),
            child: Row(
              children: [
                TextButton(
                  onPressed: () {
                    context.pushNamed(Routes.loginScreen);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(AppColors.grey),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    minimumSize: MaterialStateProperty.all(
                      Size(155.w, 55.h),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                  child: Text(AppString.skip,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppColors.black, fontWeight: FontWeight.w600)),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    /// TODO: this is a method that save the state of the user click when click on next
                    // submit();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(AppColors.blue),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    minimumSize: MaterialStateProperty.all(
                      Size(155.w, 55.h),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                  child: const Text(
                    AppString.next,
                    style: TextStyle(color: AppColors.white),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
