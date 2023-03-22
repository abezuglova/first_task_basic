import 'package:first_task_basic/widgets/details_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 15.h),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Описание',
            style: textTheme.headlineLarge,
          ),
          SizedBox(height: 11.h),
          Text(
            'Дом расположен в ЗЖМ, мкр Левенцовский, вблизи остановки общественного транспорта. Рядом расположены гипермаркеты "Магнит", "Пятерочка", "Лента", "Метро", отделение "Сбербанка". В районе работают 6 детских садов, 1 школа. Есть собственная управляющая компания.',
            style: textTheme.bodySmall,
          ),
          SizedBox(height: 10.h),
          const DetailsButtonWidget(),
        ],
      ),
    );
  }
}
