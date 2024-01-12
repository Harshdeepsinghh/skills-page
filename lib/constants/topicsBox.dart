import 'package:flutter/material.dart';
import 'package:skill_section/constants/colors.dart';

Container kRepeatedTopicsBox(BuildContext context, {required String label}) {
  return Container(
    height: 50,
    decoration: ShapeDecoration(
      shape: RoundedRectangleBorder(
        side: BorderSide(width: 1, color: primaryColor()),
        borderRadius: BorderRadius.circular(5),
      ),
    ),
    child: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12,
            color: primaryColor(),
          ),
        ),
      ),
    ),
  );
}
