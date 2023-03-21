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
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        iconTheme: const IconThemeData(
          color: Color(0xFF007AFF),
        ),
        textTheme:
            GoogleFonts.openSansTextTheme(Theme.of(context).textTheme).copyWith(
          bodySmall: const TextStyle(fontWeight: FontWeight.normal, fontSize: 12),
          bodyMedium: const TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
          bodyLarge: const TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
          headlineSmall: const TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
          headlineLarge: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          titleSmall: const TextStyle(fontWeight: FontWeight.normal, fontSize: 13),
          titleMedium: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
          titleLarge: const TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
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