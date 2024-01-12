import 'package:flutter/material.dart';
import 'package:skill_section/constants/colors.dart';
import 'package:skill_section/widgets/appBarData.dart';
import 'package:skill_section/widgets/categories.dart';
import 'package:skill_section/widgets/certifiedCoachings.dart';
import 'package:skill_section/widgets/faqs.dart';
import 'package:skill_section/widgets/filters.dart';
import 'package:skill_section/widgets/labelAndViewAll.dart';
import 'package:skill_section/widgets/learnOnlineAndOffline.dart';
import 'package:skill_section/widgets/popularCourcesByCoachings.dart';
import 'package:skill_section/widgets/topics.dart';
import 'package:skill_section/widgets/verifiedCoachings.dart';

class SkillsScreen extends StatefulWidget {
  const SkillsScreen({super.key});

  @override
  State<SkillsScreen> createState() => _SkillsScreenState();
}

class _SkillsScreenState extends State<SkillsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor(),
      appBar: AppBar(
        toolbarHeight: 210,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: primaryLinearColor(),
          ),
          child: AppBarData(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                width: double.infinity,
                child: Image.asset(
                  "assets/images/Ostello Card.png",
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            SizedBox(height: 5),
            // Topics Based on the Interest
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Topics Based On Your Interest',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            SizedBox(height: 10),
            Topics(),
            //Filters
            Filters(),

            //Certified Courses by Coachings
            LabelAndViewAll(label: "Certified Courses by Coachings"),
            CertifiedCoachings(),
            SizedBox(height: 10),
            //Learn Online and Offline
            Center(
              child: Text(
                'Learn Online or Offline',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  height: 2,
                ),
              ),
            ),
            SizedBox(height: 20),
            LearnOnlineAndOffline(),
            SizedBox(height: 15),

            // Verified Coachings
            LabelAndViewAll(label: 'Ostello Verified Coachings'),
            SizedBox(height: 5),

            VerfiedCoachings(),
            SizedBox(height: 35),
            // Explore Categories
            LabelAndViewAll(
              label: 'Explore Categories',
            ),
            Categories(),
            SizedBox(height: 10),
            // Popular Courses By Coachings
            LabelAndViewAll(label: "Popular Courses By Coachings"),
            PopularCourcesByCoachings(),

            // FAQs
            FAQs(),

            // Chat With Us
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              child: Center(
                  heightFactor: 1.5,
                  child: Container(
                    width: double.infinity,
                    child: Image.asset(
                      "assets/images/Ostello verified card.png",
                      fit: BoxFit.fitWidth,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
