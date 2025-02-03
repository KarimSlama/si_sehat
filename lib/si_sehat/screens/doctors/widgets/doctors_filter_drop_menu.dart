import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:si_sehat/core/theming/app_colors/app_colors.dart';

class DoctorsFilterDropMenuWidget extends StatelessWidget {
  const DoctorsFilterDropMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DropdownMenu(
            trailingIcon: Icon(
              IconBroken.Arrow___Down_2,
              size: 20.sp,
            ),
            width: 140.w,
            inputDecorationTheme: InputDecorationTheme(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  style: BorderStyle.solid,
                  width: .8.w,
                  color: AppColors.grey,
                ),
              ),
              activeIndicatorBorder: BorderSide(
                width: 0,
                strokeAlign: 0,
                style: BorderStyle.none,
              ),
            ),
            hintText: 'Available Today',
            dropdownMenuEntries: [
              DropdownMenuEntry(value: 'Available', label: 'Available Today'),
              DropdownMenuEntry(value: 'Available', label: 'Available Today'),
            ]),
        DropdownMenu(
            width: 125.w,
            trailingIcon: Icon(
              IconBroken.Arrow___Down_2,
              size: 20.sp,
            ),
            inputDecorationTheme: InputDecorationTheme(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  style: BorderStyle.solid,
                  width: .8.w,
                  color: AppColors.grey,
                ),
              ),
              activeIndicatorBorder: BorderSide(
                width: 0,
                strokeAlign: 0,
                style: BorderStyle.none,
              ),
            ),
            hintText: 'Gender',
            dropdownMenuEntries: [
              DropdownMenuEntry(value: 'Male', label: 'Male'),
              DropdownMenuEntry(value: 'Female', label: 'Female'),
            ]),
        DropdownMenu(
            width: 110.w,
            trailingIcon: Icon(
              IconBroken.Arrow___Down_2,
              size: 20.sp,
            ),
            inputDecorationTheme: InputDecorationTheme(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  style: BorderStyle.solid,
                  width: .8.w,
                  color: AppColors.grey,
                ),
              ),
              activeIndicatorBorder: BorderSide(
                width: 0,
                strokeAlign: 0,
                style: BorderStyle.none,
              ),
            ),
            hintText: 'Price',
            dropdownMenuEntries: [
              DropdownMenuEntry(value: 'Price', label: 'Price'),
              DropdownMenuEntry(value: 'Price', label: 'Price'),
            ]),
      ],
    );
  }
}
