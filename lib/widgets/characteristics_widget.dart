import 'package:first_task_basic/assets/app_colors.dart';
import 'package:first_task_basic/assets/app_images.dart';
import 'package:first_task_basic/widgets/characteristic_row_widget.dart';
import 'package:first_task_basic/widgets/details_button_widget.dart';
import 'package:flutter/material.dart';

class CharacteristicsWidget extends StatelessWidget {
  const CharacteristicsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Характеристики',
            style: textTheme.headlineLarge,
          ),
          const SizedBox(height: 11),
          Text(
            'Об объекте',
            style: textTheme.bodySmall!.copyWith(
              color: AppColors.characteristicsSubtitleColor.withOpacity(0.6),
              height: 16 / 12,
              letterSpacing: 0,
            ),
          ),
          const SizedBox(height: 11),
          const CharacteristicRowWidget(
            iconName: AppImages.planningIcon,
            characteristicName: 'Планировка',
            characteristicValue: 'Смежная',
          ),
          const SizedBox(height: 11),
          const Divider(),
          const SizedBox(height: 11),
          const CharacteristicRowWidget(
            iconName: AppImages.ceilingIcon,
            characteristicName: 'Высота потолков',
            characteristicValue: 'От 2,5 м',
          ),
          const SizedBox(height: 11),
          const Divider(),
          const SizedBox(height: 11),
          const CharacteristicRowWidget(
            iconName: AppImages.repairIcon,
            characteristicName: 'Ремонт',
            characteristicValue: 'Без ремонта',
          ),
          const SizedBox(height: 11),
          const Divider(),
          const SizedBox(height: 7),
          const DetailsButtonWidget(),
        ],
      ),
    );
  }
}
