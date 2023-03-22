import 'package:first_task_basic/assets/app_images.dart';
import 'package:flutter/material.dart';

class DetailsButtonWidget extends StatelessWidget {
  const DetailsButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: const [
          Image(image: AssetImage(AppImages.chevronDownIcon)),
          SizedBox(width: 4),
          Text(
            'Подробнее',
          ),
        ],
      ),
    );
  }
}
