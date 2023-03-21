import 'package:flutter/material.dart';

class CharacteristicsWidget extends StatelessWidget {
  const CharacteristicsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      height: 233,
      padding: const EdgeInsets.all(16),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Характеристики', style: textTheme.headlineLarge),
          Text('Об объекте', style: textTheme.bodySmall),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.square_outlined),
                  Text('Планировка', style: textTheme.bodyMedium),
                ],
              ),
              Text('Смежная', style: textTheme.bodyLarge),
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
                children: [
                  const Icon(Icons.square_outlined),
                  Text('Высота потолков', style: textTheme.bodyMedium),
                ],
              ),
              Text('От 2,5 м', style: textTheme.bodyLarge),
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
                children: [
                  const Icon(Icons.square_outlined),
                  Text('Ремонт', style: textTheme.bodyMedium),
                ],
              ),
              Text('Без ремонта', style: textTheme.bodyLarge),
            ],
          ),
          Container(
            height: 1,
            color: const Color(0xFF3C3C43).withOpacity(0.6),
          ),
          Row(
            children: [
              const Icon(Icons.keyboard_arrow_down),
              Text('Подробнее', style: textTheme.bodySmall),
            ],
          ),
        ],
      ),
    );
  }
}
