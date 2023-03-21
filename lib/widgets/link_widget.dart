import 'package:first_task_basic/assets/app_images.dart';
import 'package:flutter/material.dart';

class LinkWidget extends StatelessWidget {
  const LinkWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      color: Colors.white,
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Image(image: AssetImage(AppImages.logo)),
            Text('Смотреть на Avito'),
          ],
        ),
      ),
    );
  }
}
