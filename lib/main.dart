import 'package:first_task_basic/screens/offer_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const linkColor = Color(0xFF007AFF);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: linkColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        iconTheme: const IconThemeData(
          color: linkColor,
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(padding: EdgeInsets.zero),
        ),
        textTheme:
            GoogleFonts.openSansTextTheme(Theme.of(context).textTheme).copyWith(
          bodySmall: const TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 12,
            color: Colors.black,
            letterSpacing: 0.35,
            height: 16.8 / 12,
          ),
          bodyMedium: const TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 15,
            color: Colors.black,
          ),
          bodyLarge: const TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 16,
            color: Colors.black,
          ),
          headlineSmall: const TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 18,
            color: Colors.black,
          ),
          headlineMedium: const TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 9,
            color: Colors.black,
          ),
          headlineLarge: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.black,
          ),
          titleSmall: const TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 13,
            color: Colors.black,
          ),
          titleMedium: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: Colors.black,
          ),
          titleLarge: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 17,
            color: Colors.black,
          ),
        ),
      ),
      home: const OfferScreenWidget(),
    );
  }
}


// Соответствие 1в1 дизайну при запуске на эмуляторе Pixel4 с разрешением 1080x2280
// Применить библиотеку ScreenUtil
// Применить библиотеку url_launcher
// DONE Версия Flutter 3.7.7 
// DONE Оформить код в репозитории на личном GitHub
// DONE Обратить внимание на комментарии в дизайне
// DONE Разбить UI на отдельные виджеты (под каждый виджет отдельный файл)




// 3 часа
// 30 минут
// 1 час 16:10