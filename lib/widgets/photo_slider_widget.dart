import 'package:first_task_basic/assets/app_images.dart';
import 'package:flutter/material.dart';

class PhotoSliderWidget extends StatefulWidget {
  const PhotoSliderWidget({super.key});

  @override
  State<PhotoSliderWidget> createState() => _PhotoSliderWidgetState();
}

class _PhotoSliderWidgetState extends State<PhotoSliderWidget> {
  static const imagesList = [
    Image(image: AssetImage(AppImages.firstImage)),
    Image(image: AssetImage(AppImages.firstImage)),
    Image(image: AssetImage(AppImages.firstImage)),
    Image(image: AssetImage(AppImages.firstImage)),
    Image(image: AssetImage(AppImages.firstImage)),
  ];

  final controller = PageController();
  int index = 0;
  
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      width: 346,
      height: 235,
      padding: const EdgeInsets.fromLTRB(15, 0, 14, 0),
      child: Stack(
        children: [
          PageView(
            controller: controller,
            onPageChanged: (value) => setState(() {
              index = value;
            }),
            children: imagesList,
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
                '${index + 1}/${imagesList.length}',
                style: textTheme.headlineMedium!.copyWith(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
