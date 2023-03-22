import 'package:first_task_basic/assets/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkWidget extends StatelessWidget {
  const LinkWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: _launchUrl,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 11.h),
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image(
                  image: const AssetImage(AppImages.logo),
                  width: 21.w,
                  height: 22.h,
                ),
                SizedBox(width: 10.w),
                Text(
                  'Смотреть на Avito',
                  style: textTheme.bodyMedium!.copyWith(height: 0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _launchUrl() async {
    final Uri url = Uri.parse('https://www.avito.ru/');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
