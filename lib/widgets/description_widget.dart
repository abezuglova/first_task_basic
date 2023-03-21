import 'package:first_task_basic/assets/app_images.dart';
import 'package:flutter/material.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({super.key});

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
            'Описание',
            style: textTheme.headlineLarge,
          ),
          const SizedBox(height: 11),
          Text(
            'Дом расположен в ЗЖМ, мкр Левенцовский, вблизи остановки общественного транспорта. Рядом расположены гипермаркеты "Магнит", "Пятерочка", "Лента", "Метро", отделение "Сбербанка". В районе работают 6 детских садов, 1 школа. Есть собственная управляющая компания.',
            style: textTheme.bodySmall,
          ),
          const SizedBox(height: 7),
          Row(
            children: [
              const Image(image: AssetImage(AppImages.chevronDownIcon)),
              const SizedBox(width: 4),
              Text(
                'Подробнее',
                style: textTheme.bodySmall!.copyWith(color: Theme.of(context).primaryColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
