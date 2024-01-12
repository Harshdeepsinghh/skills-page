import 'package:flutter/material.dart';
import 'package:skill_section/constants/exploreCategories.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: GridView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200, // Set the maximum width of each grid item
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 0.9,
          ),
          children: [
            kRepeatedCategoryCard(
                label: "Marketing",
                image: "assets/images/marketing category.png"),
            kRepeatedCategoryCard(
                image: 'assets/images/development catgory.png',
                label: 'Development'),
            kRepeatedCategoryCard(
                image: 'assets/images/design category.png', label: 'Design'),
            kRepeatedCategoryCard(
                image: 'assets/images/language category.png',
                label: 'Foreign Language'),
          ]),
    );
  }
}
