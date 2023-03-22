import 'package:first_task_basic/assets/app_colors.dart';
import 'package:first_task_basic/widgets/characteristics_widget.dart';
import 'package:first_task_basic/widgets/custom_app_bar.dart';
import 'package:first_task_basic/widgets/description_widget.dart';
import 'package:first_task_basic/widgets/link_widget.dart';
import 'package:first_task_basic/widgets/main_info_widget.dart';
import 'package:first_task_basic/widgets/photo_slider_widget.dart';
import 'package:flutter/material.dart';

class OfferScreenWidget extends StatelessWidget {
  const OfferScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      appBar: const CustomAppBar(),
      body: ListView(
        children: const [
          SizedBox(height: 19),
          PhotoSliderWidget(),
          MainInfoWidget(),
          SizedBox(height: 10),
          DescriptionWidget(),
          SizedBox(height: 10),
          CharacteristicsWidget(),
          SizedBox(height: 10),
          LinkWidget(),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
