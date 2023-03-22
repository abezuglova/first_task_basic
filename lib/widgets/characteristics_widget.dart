import 'package:first_task_basic/assets/app_images.dart';
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
              color: const Color(0x003c3c43).withOpacity(0.6),
              height: 16 / 12,
              letterSpacing: 0,
            ),
          ),
          const SizedBox(height: 11),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Image(image: AssetImage(AppImages.planningIcon)),
                  const SizedBox(width: 10),
                  Text(
                    'Планировка',
                    style: textTheme.bodyMedium,
                  ),
                ],
              ),
              Text(
                'Смежная',
                style: textTheme.bodyLarge,
              ),
            ],
          ),
          const SizedBox(height: 11),
          const Divider(),
          const SizedBox(height: 11),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Image(image: AssetImage(AppImages.ceilingIcon)),
                  const SizedBox(width: 10),
                  Text(
                    'Высота потолков',
                    style: textTheme.bodyMedium,
                  ),
                ],
              ),
              Text(
                'От 2,5 м',
                style: textTheme.bodyLarge,
              ),
            ],
          ),
          const SizedBox(height: 11),
          const Divider(),
          const SizedBox(height: 11),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Image(image: AssetImage(AppImages.repairIcon)),
                  const SizedBox(width: 10),
                  Text(
                    'Ремонт',
                    style: textTheme.bodyMedium,
                  ),
                ],
              ),
              Text(
                'Без ремонта',
                style: textTheme.bodyLarge,
              ),
            ],
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
