import 'package:first_task_basic/assets/app_images.dart';
import 'package:flutter/material.dart';
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
          padding: const EdgeInsets.symmetric(vertical: 11),
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
