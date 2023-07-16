import 'package:flutter/material.dart';
import 'package:profile/constants/constanse.dart';

class LeftShape extends StatelessWidget {
  final double width;

  const LeftShape({super.key, this.width = 0});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width:
              width, // تو کانستراکتور نیاز به دیس بود اینحا نیاز نداره و یکراست اسم متغیر رو مینویسم  . موارد داخل یک کلاس ویجت رو داخل متد بیلد قرار میدیدم
          height: 40,
          decoration: BoxDecoration(
              color: greenBackGround,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )),
        ),
        SizedBox(width: 20,),
        Text(
          'Bmi   شاخص مثبت ',
          style: TextStyle(color: Colors.green),
        ),

      ],
    );
  }
}
