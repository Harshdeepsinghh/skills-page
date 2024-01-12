import 'package:flutter/material.dart';
import 'package:skill_section/constants/learnOnlineOfflineCard.dart';

class LearnOnlineAndOffline extends StatelessWidget {
  const LearnOnlineAndOffline({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200, // Set the maximum width of each grid item
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 1.2,
      ),
      children: [
        kRepeatedOfflineOnlineCard(
            image: "assets/images/coaching videos.png",
            label: 'Coaching Videos'),
        kRepeatedOfflineOnlineCard(
            image: "assets/images/learn anytime.png", label: 'Coaching Videos'),
        kRepeatedOfflineOnlineCard(
            image: "assets/images/lifetime access.png",
            label: 'Coaching Videos'),
        kRepeatedOfflineOnlineCard(
            image: "assets/images/include certificate.png",
            label: 'Coaching Videos'),
      ],
    );
  }
}
