import 'package:flutter/material.dart';
import 'package:skill_section/constants/colors.dart';
import 'package:skill_section/constants/querry.dart';

Container kRepeatedTopicsBox(BuildContext context, {required String label}) {
  return Container(
    height: 50,
    width: querry(context).width * 0.28,
    decoration: ShapeDecoration(
      shape: RoundedRectangleBorder(
        side: BorderSide(width: 1, color: primaryColor()),
        borderRadius: BorderRadius.circular(5),
      ),
    ),
    child: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: primaryColor(),
          ),
        ),
      ),
    ),
  );
}
