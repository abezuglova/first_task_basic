import 'package:first_task_basic/assets/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DetailsButtonWidget extends StatelessWidget {
  const DetailsButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(AppIcons.chevronDownIcon),
          SizedBox(width: 4.w),
          const Text(
            'Подробнее',
          ),
        ],
      ),
    );
  }
}
