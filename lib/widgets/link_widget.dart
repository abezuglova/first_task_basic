import 'package:first_task_basic/assets/app_images.dart';
import 'package:flutter/material.dart';

class LinkWidget extends StatelessWidget {
  const LinkWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 11),
      color: Colors.white,
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Image(image: AssetImage(AppImages.logo)),
            const SizedBox(width: 10),
            Text(
              'Смотреть на Avito',
              style: textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
