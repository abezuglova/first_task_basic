import 'package:first_task_basic/assets/app_images.dart';
import 'package:flutter/material.dart';

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
              const Image(image: AssetImage(AppImages.locationIcon)),
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
            color: const Color(0xFFF9E000),
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
