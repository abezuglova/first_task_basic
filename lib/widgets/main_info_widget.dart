import 'package:flutter/material.dart';

class MainInfoWidget extends StatelessWidget {
  const MainInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      height: 109,
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Квартира-студия, 40м, 16/23 эт.',
            style: textTheme.headlineSmall,
          ),
          Row(
            children: [
              const Icon(Icons.location_on_outlined),
              Text(
                'Центр (Кировский р-н.), Очаковская, 39',
                style: textTheme.titleSmall!
                    .copyWith(color: Theme.of(context).primaryColor),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            width: 82,
            height: 27,
            color: const Color(0xFFF9E000),
            child: Center(
              child: Text(
                '2,3 млн ₽',
                style: textTheme.titleMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
