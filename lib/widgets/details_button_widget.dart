import 'package:first_task_basic/assets/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsButtonWidget extends StatelessWidget {
  const DetailsButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(AppIcons.chevronDownIcon),
          const SizedBox(width: 4),
          const Text(
            'Подробнее',
          ),
        ],
      ),
    );
  }
}
