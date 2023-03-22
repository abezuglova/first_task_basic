import 'package:first_task_basic/assets/app_colors.dart';
import 'package:first_task_basic/screens/offer_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Colors.grey,
      ),
      child: ScreenUtilInit(
        designSize: const Size(375, 757),
        builder: (context, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              appBarTheme: const AppBarTheme(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
              ),
              dividerTheme: const DividerThemeData(
                color: AppColors.dividerColor,
                thickness: 0.5,
                space: 0,
              ),
              iconTheme: const IconThemeData(
                color: AppColors.buttonColor,
              ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size.zero,
                  foregroundColor: AppColors.buttonColor,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  textStyle: TextStyle(
                    fontSize: 12.sp,
                    letterSpacing: -0.41,
                  ).apply(fontSizeFactor: 1.sp),
                ),
              ),
              textTheme:
                  GoogleFonts.openSansTextTheme(Theme.of(context).textTheme)
                      .copyWith(
                bodySmall: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 12.sp,
                  color: Colors.black,
                  height: 16.8 / 12,
                  letterSpacing: 0.35,
                ),
                bodyMedium: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 15.sp,
                  color: Colors.black,
                  height: 22 / 15,
                  letterSpacing: -0.41,
                ),
                bodyLarge: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 16.sp,
                  color: Colors.black,
                  height: 22 / 16,
                  letterSpacing: -0.41,
                ),
                headlineSmall: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 18.sp,
                  color: Colors.black,
                  height: 25 / 18,
                  letterSpacing: -0.24,
                ),
                headlineMedium: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 9.sp,
                  color: Colors.black,
                  letterSpacing: 1.59,
                ),
                headlineLarge: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp,
                    color: Colors.black,
                    height: 15 / 18,
                    letterSpacing: 0.35),
                titleSmall: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13.sp,
                  color: Colors.black,
                  letterSpacing: -0.08,
                ),
                titleMedium: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp,
                  color: Colors.black,
                  height: 20 / 16,
                  letterSpacing: -0.24,
                ),
                titleLarge: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 17.sp,
                  color: Colors.black,
                  height: 22 / 17,
                  letterSpacing: -0.41,
                ),
              ).apply(fontSizeFactor: 1.sp),
            ),
            home: child,
          );
        },
        child: const OfferScreenWidget(),
      ),
    );
  }
}
