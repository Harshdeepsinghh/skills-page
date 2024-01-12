import 'package:flutter/material.dart';
import 'package:skill_section/constants/filtersBox.dart';

class Filters extends StatelessWidget {
  const Filters({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          kRepeatedFilterBox(label: "All filters", isSelected: false),
          kRepeatedFilterBox(label: "Development", isSelected: false),
          kRepeatedFilterBox(label: "Design", isSelected: true),
          kRepeatedFilterBox(label: "Business", isSelected: false),
        ],
      ),
    );
  }
}
