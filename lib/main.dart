import 'package:first_task_basic/screens/offer_screen.dart';
import 'package:flutter/material.dart';

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
      ),
      home: const OfferScreenWidget(),
    );
  }
}


// Оформить код в репозитории на личном GitHub
// Соответствие 1в1 дизайну при запуске на эмуляторе Pixel4 с разрешением 1080x2280
// Разбить UI на отдельные виджеты (под каждый виджет отдельный файл)
// Применить библиотеку ScreenUtil
// Применить библиотеку url_launcher
// Обратить внимание на комментарии в дизайне
// DONE Версия Flutter 3.7.7 

// 2,5 часа