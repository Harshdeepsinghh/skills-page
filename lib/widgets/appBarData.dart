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
                SizedBox(width: 20),
                Text(
                  "Skills",
                  style: TextStyle(
                      color: whiteColor(),
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(height: 10),
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
                                fontWeight: FontWeight.w600,
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
                        'Near SKM College, Gandhinagar, Ahmedabad',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: whiteColor(),
                            overflow: TextOverflow.ellipsis),
                        maxLines: 1,
                        softWrap: true,
                      )
                    ],
                  ),
                ),
                SvgPicture.asset(
                  "assets/images/profile.svg",
                  width: 37,
                  height: 38,
                )
              ],
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                fillColor: whiteColor(),
                filled: true,
                contentPadding: EdgeInsets.symmetric(vertical: 15),
                prefixIcon: Image.asset(
                  "assets/images/search.png",
                  scale: 1,
                ),
                // Icon(Icons.search, color: greyColor().withOpacity(0.5)),
                hintText: "Search for coachings, exams, courses & more...",
                hintStyle: TextStyle(
                    fontSize: 12, color: greyColor().withOpacity(0.5)),
                suffixIcon: SizedBox(
                  width: 80,
                  child: Row(
                    children: [
                      SizedBox(
                        height: 30,
                        child: VerticalDivider(
                          color: greyColor().withOpacity(0.5),
                        ),
                      ),
                      CircleAvatar(
                        radius: 11,
                        backgroundColor: primaryColor(),
                        child: SvgPicture.asset(
                            "assets/images/textfield icon.svg"),
                      ),
                      SizedBox(width: 5),
                      SvgPicture.asset("assets/images/micIcon.svg")
                    ],
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    width: 0,
                    color: secondaryColor(),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    width: 0,
                    color: secondaryColor(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
