import 'package:first_task_basic/assets/app_images.dart';
import 'package:flutter/material.dart';

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
              top: 9,
              right: 9,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Image(
                        image: AssetImage(AppImages.fileDownloadIcon)),
                  ),
                  const SizedBox(width: 15),
                  TextButton(
                    onPressed: () {},
                    child: const Image(image: AssetImage(AppImages.moreIcon)),
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
  Size get preferredSize => const Size.fromHeight(36);
}
