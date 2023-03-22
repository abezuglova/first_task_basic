import 'package:first_task_basic/assets/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: ColoredBox(
        color: Colors.white,
        child: Stack(
          children: [
            Center(
                child: Text(
              'Предложение',
              style: textTheme.titleLarge,
            )),
            Positioned(
              top: 9.h,
              right: 9.w,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: SvgPicture.asset(AppIcons.fileDownloadIcon),
                  ),
                  SizedBox(width: 15.w),
                  TextButton(
                    onPressed: () {},
                    child: SvgPicture.asset(AppIcons.moreIcon),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(36.w);
}
