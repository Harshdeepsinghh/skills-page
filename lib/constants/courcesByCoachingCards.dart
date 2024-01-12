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
    width: 222,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30), color: whiteColor()),
    child: Column(
      children: [
        Stack(
          children: [
            Image.asset(
              image,
              fit: BoxFit.fitWidth,
              scale: 0.7,
            ),
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  color: Colors.black
                      .withOpacity(0.4), // Background color with opacity
                ),
              ),
            ),
            Positioned(
                top: 42,
                left: 90,
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
                      borderRadius: BorderRadius.circular(30)),
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
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  height: 2.5,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    price,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                  ),
                  SizedBox(width: 10),
                  Text(
                    realPrice,
                    style: TextStyle(
                        color: primaryColor(),
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        decorationColor: primaryColor(),
                        decoration: TextDecoration.lineThrough),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Image.asset(
                    "assets/images/time.png",
                    scale: 0.9,
                  ),
                  SizedBox(width: 5),
                  Text(
                    '1 Year Course Duration',
                    style: TextStyle(
                      height: 1.7,
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
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
                      fontSize: 10,
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
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    "Buy Now",
                    style: TextStyle(
                        color: whiteColor(),
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: primaryColor()),
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    "View Syllabus",
                    style: TextStyle(
                        color: primaryColor(),
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
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
        size: 10,
        color: greyColor().withOpacity(0.7),
      ),
      SizedBox(width: 5),
      Text(
        label,
        style: TextStyle(height: 1.8, color: greyColor(), fontSize: 12),
      ),
    ],
  );
}
