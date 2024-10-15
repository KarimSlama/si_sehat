import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:si_sehat/core/helpers/spacing.dart';
import 'package:si_sehat/core/theming/app_colors/app_colors.dart';
import 'package:si_sehat/core/theming/app_strings/app_string.dart';
import 'package:si_sehat/si_sehat/screens/home/widget/grid_view_selections_widet.dart';
import 'package:si_sehat/si_sehat/screens/home/widget/promoted_card_page_view_widget.dart';
import 'package:si_sehat/si_sehat/screens/home/widget/search_and_filter_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi Karim!',

                ///Just For Now Modify Later!
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              verticalSpace(3),
              Text(
                AppString.mayYouAlwaysInAGoodCondition,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontSize: 14.sp,
                    ),
              ),
            ],
          ),
          automaticallyImplyLeading: false,
          actions: [
            Container(
              decoration: BoxDecoration(
                  color: AppColors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: IconButton(
                onPressed: () {},
                icon: Icon(IconBroken.Notification),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: Column(
            children: [
              verticalSpace(14),
              SearchAndFilterWidget(),
              verticalSpace(20),
              GridViewSelectionsWidget(),
              promotedCardPageViewWidget(),
            ],
          ),
        ),
        bottomNavigationBar: SalomonBottomBar(
            selectedItemColor: AppColors.blue,
            unselectedItemColor: AppColors.darkGrey,
            items: [
          SalomonBottomBarItem(
              icon: Icon(IconBroken.Home), title: Text('Home'),
          ),
          SalomonBottomBarItem(
            icon: Icon(IconBroken.Calendar), title: Text('Calendar'),
          ),
          SalomonBottomBarItem(
            icon: Icon(IconBroken.Paper), title: Text('History'),
          ),
          SalomonBottomBarItem(
            icon: Icon(IconBroken.Chat), title: Text('Chat'),
          ),
          SalomonBottomBarItem(
            icon: Icon(IconBroken.Profile), title: Text('Account'),
          ),
        ]));
  }
}
