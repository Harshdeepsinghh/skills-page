import 'package:flutter/material.dart';
import 'package:skill_section/constants/colors.dart';
import 'package:skill_section/constants/querry.dart';

kRepeatedQuestionsCard(BuildContext context, {required String question}) {
  return Padding(
    padding: const EdgeInsets.all(5),
    child: Card(
      surfaceTintColor: whiteColor(),
      color: whiteColor(),
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
