import 'package:first_task_basic/assets/app_images.dart';
import 'package:flutter/material.dart';

class PhotoSliderWidget extends StatefulWidget {
  const PhotoSliderWidget({super.key});

  @override
  State<PhotoSliderWidget> createState() => _PhotoSliderWidgetState();
}

class _PhotoSliderWidgetState extends State<PhotoSliderWidget> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Stack(
        children: [
          const SizedBox(
            width: 346,
            height: 235,
            child: Image(image: AssetImage(AppImages.firstImage)),
          ),
          Container(
            color: Colors.black.withOpacity(0.6),
            child: Text(
              '1/5',
              style: textTheme.headlineMedium!.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
