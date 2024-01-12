import 'package:flutter/material.dart';
import 'package:skill_section/constants/colors.dart';

Container kRepeatedFilterBox(
    {required String label, required bool isSelected}) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 4),
    decoration: BoxDecoration(
      color: isSelected ? secondaryColor() : null,
      border: Border.all(
          width: 2, color: isSelected ? primaryColor() : Colors.grey),
      borderRadius: BorderRadius.circular(40),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Center(
          child: Text(
        label,
        style: TextStyle(
          fontWeight: FontWeight.w800,
          color: isSelected ? primaryColor() : greyColor(),
        ),
      )),
    ),
  );
}
