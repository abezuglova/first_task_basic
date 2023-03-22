import 'package:first_task_basic/assets/app_colors.dart';
import 'package:first_task_basic/assets/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainInfoWidget extends StatelessWidget {
  const MainInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(16.w, 12.h, 16.w, 15.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Квартира-студия, 40м, 16/23 эт.',
            style: textTheme.headlineSmall,
          ),
          SizedBox(height: 2.h),
          Row(
            children: [
              SvgPicture.asset(AppIcons.locationIcon),
              SizedBox(width: 4.w),
              Text(
                'Центр (Кировский р-н.), Очаковская, 39',
                style: textTheme.titleSmall!
                    .copyWith(color: AppColors.buttonColor),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Container(
            padding: EdgeInsets.fromLTRB(5.w, 3.h, 5.w, 4.h),
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
