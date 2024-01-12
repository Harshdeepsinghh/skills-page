import 'package:flutter/material.dart';
import 'package:skill_section/constants/colors.dart';
import 'package:skill_section/constants/querry.dart';

kRepeatedQuestionsCard(BuildContext context, {required String question}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: Container(
      decoration: ShapeDecoration(
        color: whiteColor(),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        shadows: [
          BoxShadow(
            color: Color(0x0A000000),
            blurRadius: 4,
            offset: Offset(2, 2),
            spreadRadius: 1,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
        child: Row(
          children: [
            SizedBox(
              width: querry(context).width * 0.7,
              child: Text(
                question,
                style: TextStyle(
                  color: greyColor(),
                ),
              ),
            ),
            Spacer(),
            CircleAvatar(
              radius: 15,
              backgroundColor: primaryColor(),
              child: Icon(
                Icons.keyboard_arrow_down,
                color: whiteColor(),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
