import 'package:flutter/material.dart';
import 'package:skill_section/constants/colors.dart';
import 'package:skill_section/constants/courcesByCoachingCards.dart';

class PopularCourcesByCoachings extends StatelessWidget {
  const PopularCourcesByCoachings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 30),
        width: double.infinity,
        height: 590,
        color: secondaryColor(),
        child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              kRepeatedCourcesByCoachings(
                image: "assets/images/popular cources.png",
                coins: "300",
                label: 'Physics Foundation Course',
                price: '₹1000/- Month',
                realPrice: '₹1700',
              ),
              kRepeatedCourcesByCoachings(
                image: "assets/images/popular cources.png",
                coins: "300",
                label: 'Biology Foundation Course',
                price: '₹2000/- Month',
                realPrice: '₹4700',
              ),
            ]));
  }
}
