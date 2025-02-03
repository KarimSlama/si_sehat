import 'package:flutter/material.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:si_sehat/core/helpers/extensions.dart';
import 'package:si_sehat/core/helpers/spacing.dart';
import 'package:si_sehat/core/routing/routes.dart';
import 'package:si_sehat/core/theming/app_strings/app_string.dart';
import 'package:si_sehat/core/widgets/search_and_filter_widget.dart';
import 'package:si_sehat/si_sehat/screens/see_more/widgets/specialization_bloc_builder.dart';

class SeeMoreScreen extends StatelessWidget {
  const SeeMoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () => context.pushNamed(Routes.specializationScreen),
              icon: Icon(IconBroken.Arrow___Left_2)),
          title: Text(AppString.moreSpecialization),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 12),
          child: Column(
            children: [
              SearchAndFilterWidget(),
              verticalSpace(20),
              SeeMoreBlocBuilder(),
            ],
          ),
        ));
  }
}
