import 'package:flutter/material.dart';
import 'package:skill_section/constants/colors.dart';
import 'package:skill_section/constants/verifiedCoachings.dart';

class VerfiedCoachings extends StatelessWidget {
  const VerfiedCoachings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30),
      width: double.infinity,
      height: 340,
      color: cardBackgroundColor(),
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                Container(
                  width: 160,
                  padding: EdgeInsets.all(8),
                  decoration: ShapeDecoration(
                    color: primaryColor(),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        "Ostello Verified",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w900,
                          color: whiteColor(),
                        ),
                      ),
                      Spacer(),
                      Image.asset(
                        "assets/images/verified.png",
                        scale: 0.9,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                kRepeatedVerifiedList(label: "Coaching Videos"),
                kRepeatedVerifiedList(label: "Learn Anytime"),
                kRepeatedVerifiedList(label: "Lifetime Access"),
                kRepeatedVerifiedList(label: "Includes Certification"),
                kRepeatedVerifiedList(label: "4.5+ Reviews"),
              ],
            ),
          ),
          verifiedCoachings(
            image: "assets/images/akash coaching.png",
            institute: 'Aakash Institute\nCoaching',
            rating: "4.5/5",
            distance: '3 kms away',
            location: 'Kalkaji , New Delhi',
            course: 'Physics . Chemistry . Biology .  Maths . English ',
          ),
          verifiedCoachings(
            image: "assets/images/akash coaching.png",
            institute: 'Another Institute',
            rating: "3/5",
            distance: '6 kms away',
            location: 'address , New Delhi',
            course: 'Physics . Chemistry .',
          )
        ],
      ),
    );
  }
}
