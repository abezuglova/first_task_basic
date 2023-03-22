import 'package:first_task_basic/assets/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhotoSliderWidget extends StatefulWidget {
  const PhotoSliderWidget({super.key});

  @override
  State<PhotoSliderWidget> createState() => _PhotoSliderWidgetState();
}

class _PhotoSliderWidgetState extends State<PhotoSliderWidget> {
  final controller = PageController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final imagesList = [
      Image(
        image: const AssetImage(AppImages.firstImage),
        width: 346.w,
        height: 235.h,
        fit: BoxFit.fill,
      ),
      Image(
        image: const AssetImage(AppImages.firstImage),
        width: 346.w,
        height: 235.h,
        fit: BoxFit.fill,
      ),
      Image(
        image: const AssetImage(AppImages.firstImage),
        width: 346.w,
        height: 235.h,
        fit: BoxFit.fill,
      ),
      Image(
        image: const AssetImage(AppImages.firstImage),
        width: 346.w,
        height: 235.h,
        fit: BoxFit.fill,
      ),
      Image(
        image: const AssetImage(AppImages.firstImage),
        width: 346.w,
        height: 235.h,
        fit: BoxFit.fill,
      ),
    ];

    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      width: 346.w,
      height: 235.h,
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
            left: 162.w,
            bottom: 10.h,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 3.h),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: BorderRadius.all(const Radius.circular(4).w),
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
