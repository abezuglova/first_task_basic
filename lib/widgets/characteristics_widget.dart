import 'package:flutter/material.dart';

class CharacteristicsWidget extends StatelessWidget {
  const CharacteristicsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 233,
      padding: const EdgeInsets.all(16),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Характеристики'),
          const Text('Об объекте'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Icon(Icons.square_outlined),
                  Text('Планировка'),
                ],
              ),
              const Text('Смежная'),
            ],
          ),
          Container(
            height: 1,
            color: const Color(0xFF3C3C43).withOpacity(0.6),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Icon(Icons.square_outlined),
                  Text('Высота потолков'),
                ],
              ),
              const Text('От 2,5 м'),
            ],
          ),
          Container(
            height: 1,
            color: const Color(0xFF3C3C43).withOpacity(0.6),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Icon(Icons.square_outlined),
                  Text('Ремонт'),
                ],
              ),
              const Text('Без ремонта'),
            ],
          ),
          Container(
            height: 1,
            color: const Color(0xFF3C3C43).withOpacity(0.6),
          ),
          Row(
            children: const [
              Icon(Icons.keyboard_arrow_down),
              Text('Подробнее'),
            ],
          ),
        ],
      ),
    );
  }
}
