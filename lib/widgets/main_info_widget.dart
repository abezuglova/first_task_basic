import 'package:first_task_basic/assets/app_colors.dart';
import 'package:first_task_basic/assets/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainInfoWidget extends StatelessWidget {
  const MainInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Квартира-студия, 40м, 16/23 эт.',
            style: textTheme.headlineSmall,
          ),
          const SizedBox(height: 2),
          Row(
            children: [
              SvgPicture.asset(AppIcons.locationIcon),
              const SizedBox(width: 4),
              Text(
                'Центр (Кировский р-н.), Очаковская, 39',
                style: textTheme.titleSmall!
                    .copyWith(color: Theme.of(context).primaryColor),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.fromLTRB(5, 3, 5, 4),
            color: AppColors.mainInfoPriceColor,
            child: Text(
              '2,3 млн ₽',
              style: textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }
}
