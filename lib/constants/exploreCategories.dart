import 'package:flutter/material.dart';
import 'package:skill_section/constants/colors.dart';

Container kRepeatedCategoryCard(
    {required String label, required String image}) {
  return Container(
    child: Card(
      color: cardBackgroundColor(),
      surfaceTintColor: cardBackgroundColor(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                label,
                style: TextStyle(
                    color: primaryColor(), fontWeight: FontWeight.w800),
              ),
            ),
            Image.asset(image),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    ),
  );
}
