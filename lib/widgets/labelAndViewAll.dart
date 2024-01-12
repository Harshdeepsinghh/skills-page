import 'package:flutter/material.dart';
import 'package:skill_section/constants/colors.dart';

class LabelAndViewAll extends StatelessWidget {
  final String label;
  const LabelAndViewAll({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
      child: Row(
        children: [
          Text(
            label,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              height: 3,
              fontWeight: FontWeight.w800,
            ),
          ),
          Spacer(),
          Text(
            'view all >',
            style: TextStyle(
              fontSize: 11,
              color: primaryColor(),
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
