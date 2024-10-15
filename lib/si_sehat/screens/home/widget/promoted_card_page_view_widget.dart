import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:si_sehat/si_sehat/screens/home/data/models/service_promote_card_model.dart';

class promotedCardPageViewWidget extends StatelessWidget {
  const promotedCardPageViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var pageController = PageController();
    return Expanded(
      child: PageView.builder(
        itemCount: 2,
        physics: const BouncingScrollPhysics(),
        controller: pageController,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(horizontal: 7.h),
          child: SvgPicture.asset(servicesPromoteCard[index].image),
        ),
      ),
    );
  }
}
