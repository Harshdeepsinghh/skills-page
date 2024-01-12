import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skill_section/constants/colors.dart';

Container kRepeatedCourcesByCoachings(
    {required String image,
    required String coins,
    required String label,
    required String realPrice,
    required String price}) {
  return Container(
    margin: EdgeInsets.all(12),
    width: 280,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40), color: whiteColor()),
    child: Column(
      children: [
        Stack(
          children: [
            Image.asset(
              image,
              fit: BoxFit.fitWidth,
              scale: 0.8,
            ),
            Positioned(
                top: 50,
                left: 115,
                child: Icon(
                  Icons.play_circle_fill_rounded,
                  size: 45,
                  color: whiteColor(),
                )),
            Positioned(
                top: 10,
                left: 10,
                child: Container(
                  decoration: BoxDecoration(
                      color: whiteColor(),
                      borderRadius: BorderRadius.circular(40)),
                  width: 60,
                  height: 28,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/images/coins.png"),
                      Text(
                        coins,
                        style: TextStyle(
                            color: primaryColor(), fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ))
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                  height: 2.5,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    price,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    realPrice,
                    style: TextStyle(
                        color: primaryColor(),
                        fontWeight: FontWeight.w500,
                        decorationColor: primaryColor(),
                        decoration: TextDecoration.lineThrough),
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset("assets/images/time.png"),
                  Text(
                    '1 Year Course Duration',
                    style: TextStyle(
                      height: 1.7,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/images/open book.svg",
                    height: 25,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Offline . Online',
                    style: TextStyle(
                      color: greyColor(),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: primaryColor(),
                    borderRadius: BorderRadius.circular(40)),
                child: Center(
                  child: Text(
                    "Buy Now",
                    style: TextStyle(color: whiteColor()),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: primaryColor()),
                    borderRadius: BorderRadius.circular(40)),
                child: Center(
                  child: Text(
                    "View Syllabus",
                    style: TextStyle(color: primaryColor()),
                  ),
                ),
              ),
              SizedBox(height: 10),
              kRepeatedList(label: "Recorded lectures by Ostello"),
              kRepeatedList(label: "Full lifetime access"),
              kRepeatedList(label: "Exercise files"),
              kRepeatedList(label: "Mock tests and assignments"),
              kRepeatedList(label: "Doubt clearing sessions"),
            ],
          ),
        ),
      ],
    ),
  );
}

Row kRepeatedList({required String label}) {
  return Row(
    children: [
      Icon(
        Icons.circle,
        size: 12,
        color: greyColor(),
      ),
      SizedBox(width: 5),
      Text(label),
    ],
  );
}
