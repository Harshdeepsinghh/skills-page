import 'package:flutter/material.dart';

class CertifiedCoachings extends StatelessWidget {
  const CertifiedCoachings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 170, // Set the maximum width of each grid item
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 1.2,
      ),
      children: [
        Image.asset("assets/images/aakash.png"),
        Image.asset("assets/images/afd.png"),
        Image.asset("assets/images/vracademy.png"),
        Image.asset("assets/images/mcc.png"),
        Image.asset("assets/images/iasacagemy.png"),
        Image.asset("assets/images/jamboree.png"),
      ],
    );
  }
}
