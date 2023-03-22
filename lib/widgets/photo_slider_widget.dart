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
      padding: const EdgeInsets.fromLTRB(15, 0, 14, 0),
      child: Center(
        child: Stack(
          children: [
            const Image(
              image: AssetImage(AppImages.firstImage),
              width: 346,
              height: 235,
            ),
            Positioned(
              left: 162,
              bottom: 10,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 3),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.6),
                  borderRadius: const BorderRadius.all(Radius.circular(4)),
                ),
                child: Text(
                  '1/5',
                  style: textTheme.headlineMedium!.copyWith(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
