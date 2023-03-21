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
              right: 0,
              child: Row(
                children: const [
                  Icon(
                    Icons.file_download_outlined,
                  ),
                  Icon(
                    Icons.more_horiz,
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
