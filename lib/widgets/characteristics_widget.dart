import 'package:first_task_basic/assets/app_colors.dart';
import 'package:first_task_basic/assets/app_icons.dart';
import 'package:first_task_basic/widgets/characteristic_row_widget.dart';
import 'package:first_task_basic/widgets/details_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CharacteristicsWidget extends StatelessWidget {
  const CharacteristicsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 15.h),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Характеристики',
            style: textTheme.headlineLarge,
          ),
          SizedBox(height: 11.h),
          Text(
            'Об объекте',
            style: textTheme.bodySmall!.copyWith(
              color: AppColors.characteristicsSubtitleColor.withOpacity(0.6),
              height: 16 / 12,
              letterSpacing: 0,
            ),
          ),
          SizedBox(height: 11.h),
          const CharacteristicRowWidget(
            iconName: AppIcons.planningIcon,
            characteristicName: 'Планировка',
            characteristicValue: 'Смежная',
          ),
          SizedBox(height: 11.h),
          const Divider(),
          SizedBox(height: 11.h),
          const CharacteristicRowWidget(
            iconName: AppIcons.ceilingIcon,
            characteristicName: 'Высота потолков',
            characteristicValue: 'От 2,5 м',
          ),
          SizedBox(height: 11.h),
          const Divider(),
          SizedBox(height: 11.h),
          const CharacteristicRowWidget(
            iconName: AppIcons.repairIcon,
            characteristicName: 'Ремонт',
            characteristicValue: 'Без ремонта',
          ),
          SizedBox(height: 11.h),
          const Divider(),
          SizedBox(height: 10.h),
          const DetailsButtonWidget(),
        ],
      ),
    );
  }
}
