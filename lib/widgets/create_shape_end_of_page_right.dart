import 'package:flutter/material.dart';
import 'package:profile/constants/constanse.dart';

class RightShape extends StatelessWidget {
  final double width;

  const RightShape(
      {super.key,
      this.width =
          0}); // گرفتن وید اشکال از ورودی . دادن به کانستراکتور گلاس ویجت برای استفاده تو دارت فقط نام کانستراکتور بدی بهش اوکیه

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          ' Bmi   شاخص منفی ',
          style: TextStyle(color: Colors.red),
        ),
        SizedBox(
          width: 20,
        ),
        Container(
          width:
              width, // تو کانستراکتور نیاز به دیس بود اینحا نیاز نداره و یکراست اسم متغیر رو مینویسم  . موارد داخل یک کلاس ویجت رو داخل متد بیلد قرار میدیدم
          height: 40,
          decoration: BoxDecoration(
              color: redBackGround,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              )),
        ),
      ],
    );
  }
}
