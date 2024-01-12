import 'package:flutter/material.dart';
import 'package:skill_section/constants/colors.dart';

Column kRepeatedOfflineOnlineCard(
    {required String image, required String label}) {
  return Column(
    children: [
      CircleAvatar(
        radius: 35,
        backgroundColor: secondaryColor(),
        child: Image.asset(
          image,
        ),
      ),
      Text(
        label,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          height: 3,
        ),
      ),
    ],
  );
}
