import 'package:flutter/material.dart';

class MainInfoWidget extends StatelessWidget {
  const MainInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 109,
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Квартира-студия, 40м, 16/23 эт.'),
          Row(
            children: const [
              Icon(Icons.location_on_outlined),
              Text('Центр (Кировский р-н.), Очаковская, 39'),
            ],
          ),
          Container(
            color: const Color(0xFFF9E000),
            child: const Text('2,3 млн ₽'),
          ),
        ],
      ),
    );
  }
}
