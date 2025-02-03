import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:si_sehat/core/helpers/extensions.dart';
import 'package:si_sehat/core/helpers/separator.dart';
import 'package:si_sehat/core/helpers/spacing.dart';
import 'package:si_sehat/core/routing/routes.dart';
import 'package:si_sehat/core/theming/app_strings/app_string.dart';
import 'package:si_sehat/si_sehat/screens/book_an_appointment/controller/specialization_cubit.dart';
import 'package:si_sehat/si_sehat/screens/book_an_appointment/data/models/specialization_model.dart';
import 'package:si_sehat/si_sehat/screens/book_an_appointment/data/models/specialization_response.dart';


/// I converted the widget state to make setState when pressed on the button that shows list of doctors
class SpecializationListWidget extends StatefulWidget {
  final List<SpecializationData?> specializationDataList;

  const SpecializationListWidget(
      {super.key, required this.specializationDataList});

  @override
  State<SpecializationListWidget> createState() =>
      _SpecializationListWidgetState();
}

class _SpecializationListWidgetState extends State<SpecializationListWidget> {
  var selectedIndex = 0;

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
                      widget.specializationDataList[index]?.name ??
                          'Ear, Nose & Throat',
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

                      /// I make this to take action when I click on the arrow button to show the list of doctors
                      /// When I pressed on the button It supposed to filter the list of doctors by specialization id then navigate to another screen
                      /// I got an error or definitely It doesn't go as I want the method filter by specialization id but doesn't get the specific data and navigate without filtering
                      setState(() {
                        selectedIndex = index;
                        print('selected index in setState $selectedIndex');
                      });
                      context.read<SpecializationCubit>().getDoctorsList(
                          specializationId:
                              widget.specializationDataList[index]?.id);


                      print('selected index after setState $selectedIndex');
                      print(
                          'selected index comes from filter ${widget.specializationDataList[index]?.id}');
                      // context.pushNamed(
                      //     Routes.doctorsWithSpecializationScreen);
                    },
                    icon: Icon(
                      IconBroken.Arrow___Right_2,
                    )),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => separator(),
        itemCount: widget.specializationDataList.length < 4
            ? widget.specializationDataList.length
            : 4,
      ),
    );
  }
}
