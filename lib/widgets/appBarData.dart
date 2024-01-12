import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skill_section/constants/colors.dart';
import 'package:skill_section/constants/querry.dart';

class AppBarData extends StatelessWidget {
  const AppBarData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset("assets/images/backIcon.svg"),
                SizedBox(width: 10),
                Text(
                  "Skills",
                  style: TextStyle(
                      color: whiteColor(),
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: querry(context).width * 0.7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset("assets/images/location.svg"),
                          SizedBox(width: 10),
                          Text(
                            "Ghandhinagar",
                            style: TextStyle(
                                fontSize: 16,
                                color: whiteColor(),
                                overflow: TextOverflow.ellipsis),
                            maxLines: 1,
                            softWrap: true,
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: whiteColor(),
                            size: 35,
                          )
                        ],
                      ),
                      Text(
                        'Near SKM College, Gandhinagar, Ahmedabad djdj',
                        style: TextStyle(
                            color: whiteColor(),
                            overflow: TextOverflow.ellipsis),
                        maxLines: 1,
                        softWrap: true,
                      )
                    ],
                  ),
                ),
                SvgPicture.asset("assets/images/profile.svg")
              ],
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                fillColor: whiteColor(),
                filled: true,
                contentPadding: EdgeInsets.symmetric(vertical: 15),
                prefixIcon: Icon(Icons.search, color: greyColor()),
                hintText: "Search for coachings, exams, courses & more...",
                hintStyle: TextStyle(fontSize: 14),
                suffixIcon: SizedBox(
                  width: 80,
                  child: Row(
                    children: [
                      SizedBox(
                        height: 30,
                        child: VerticalDivider(
                          thickness: 1,
                          color: greyColor(),
                        ),
                      ),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: primaryColor(),
                        child: SvgPicture.asset(
                            "assets/images/textfield icon.svg"),
                      ),
                      SizedBox(width: 5),
                      SvgPicture.asset("assets/images/micIcon.svg")
                    ],
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(width: 0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
