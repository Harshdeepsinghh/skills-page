import 'package:flutter/material.dart';
import 'package:skill_section/constants/topicsBox.dart';

class Topics extends StatelessWidget {
  const Topics({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: GridView(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 150, // Set the maximum width of each grid item
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 2.5,
        ),
        children: [
          kRepeatedTopicsBox(context, label: 'Augmented Reality'),
          kRepeatedTopicsBox(context, label: 'Adobe XD'),
          kRepeatedTopicsBox(context, label: 'Figma'),
          kRepeatedTopicsBox(context, label: 'Adobe Illustrator'),
          kRepeatedTopicsBox(context, label: 'Unreal Engine'),
          kRepeatedTopicsBox(context, label: 'Virtual Reality'),
        ],
      ),
    );
  }
}
