import 'package:flutter/material.dart';

class CharacteristicRowWidget extends StatelessWidget {
  final String iconName;
  final String characteristicName;
  final String characteristicValue;
  const CharacteristicRowWidget({
    super.key,
    required this.iconName,
    required this.characteristicName,
    required this.characteristicValue,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image(image: AssetImage(iconName)),
            const SizedBox(width: 10),
            Text(
              characteristicName,
              style: textTheme.bodyMedium,
            ),
          ],
        ),
        Text(
          characteristicValue,
          style: textTheme.bodyLarge,
        ),
      ],
    );
  }
}
