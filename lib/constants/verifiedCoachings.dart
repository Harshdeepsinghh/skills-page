import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skill_section/constants/colors.dart';
import 'package:dotted_line/dotted_line.dart';

verifiedCoachings(
    {required String image,
    required String institute,
    required String rating,
    required String distance,
    required String location,
    required String course,
    required}) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
        color: whiteColor(), borderRadius: BorderRadius.circular(40)),
    width: 222,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          image,
          width: double.infinity,
          fit: BoxFit.fitWidth,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              kInstituteLabelAndRating(label: institute, rating: rating),
              SizedBox(height: 10),
              kInstituteLocationAndDistance(
                  distance: distance, location: location),
              SizedBox(height: 10),
              kCoursesNames(course: course),
              SizedBox(height: 10),
              DottedLine(
                dashColor: greyColor(),
              ),
              SizedBox(height: 10),
              kDiscountLabel()
            ],
          ),
        ),
      ],
    ),
  );
}

Row kDiscountLabel() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SvgPicture.asset(
        "assets/images/bxs_offer.svg",
        height: 18,
      ),
      SizedBox(width: 5),
      Text(
        'Get 15% OFF on your enrolment',
        style: TextStyle(
          color: darkBlueColor(),
          fontSize: 8,
          fontWeight: FontWeight.w900,
        ),
      ),
    ],
  );
}

Row kCoursesNames({required String course}) {
  return Row(
    children: [
      SvgPicture.asset(
        "assets/images/open book.svg",
        height: 18,
      ),
      SizedBox(width: 3),
      SizedBox(
        width: 184,
        child: Text(
          course,
          softWrap: true,
          style: TextStyle(
            overflow: TextOverflow.ellipsis,
            color: greyColor().withOpacity(0.7),
            fontSize: 8,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    ],
  );
}

Row kInstituteLocationAndDistance(
    {required String distance, required String location}) {
  return Row(
    children: [
      Text(
        distance,
        style: TextStyle(
          color: greyColor(),
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ),
      SizedBox(width: 5),
      SvgPicture.asset(
        "assets/images/pin2.svg",
        // ignore: deprecated_member_use
        color: greyColor(),
      ),
      SizedBox(width: 5),
      Text(
        location,
        style: TextStyle(
          fontSize: 10,
          color: greyColor(),
          fontWeight: FontWeight.w600,
        ),
      ),
    ],
  );
}

Row kInstituteLabelAndRating({required String label, required String rating}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        label,
        style: TextStyle(
          fontWeight: FontWeight.w800,
          letterSpacing: 0.14,
        ),
      ),
      Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        surfaceTintColor: greenColor(),
        color: greenColor(),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Row(
            children: [
              Text(
                rating,
                style: TextStyle(
                  color: whiteColor(),
                  fontSize: 10,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Icon(
                Icons.star,
                color: whiteColor(),
                size: 18,
              )
            ],
          ),
        ),
      )
    ],
  );
}

kRepeatedVerifiedList({required String label}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
    child: Row(
      children: [
        SvgPicture.asset("assets/images/typcn_tick.svg"),
        Text(
          label,
          style: TextStyle(fontSize: 11),
        )
      ],
    ),
  );
}
