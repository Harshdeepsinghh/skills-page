import 'package:flutter/material.dart';
import 'package:skill_section/constants/questionsCard.dart';

class FAQs extends StatelessWidget {
  const FAQs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        Text(
          'Frequently Asked Questions',
          style:
              TextStyle(fontSize: 16, fontWeight: FontWeight.w800, height: 2),
        ),
        kRepeatedQuestionsCard(context,
            question: 'Are these courses offered by Ostello?'),
        kRepeatedQuestionsCard(context,
            question:
                'Do I get certification after the completion of a course?'),
        kRepeatedQuestionsCard(context,
            question:
                'Can I get a refund if I am not satisfied with the course?'),
        kRepeatedQuestionsCard(context,
            question: 'Is +2 compulsory for enrolling into these courses?'),
        kRepeatedQuestionsCard(context,
            question: 'Can I access the course anytime I want?'),
      ],
    );
  }
}
