import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../res/components/colors.dart';
import '../../../res/components/vertical_speacing.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    super.key,
    required this.img,
  });

  final String img;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 169,
      width: 146,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: AppColor.cardColor,
        border: Border.all(
          width: 0.5,
          color: AppColor.cardborderColor,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 107,
              width: 136,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
                image: DecorationImage(
                  image: AssetImage(img),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const VerticalSpeacing(8.0),
            Text.rich(
              textAlign: TextAlign.start,
              TextSpan(
                text: 'Agency Name\n',
                style: GoogleFonts.getFont(
                  "Urbanist",
                  textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColor.titleColor,
                  ),
                ),
                children: [
                  TextSpan(
                    text: 'Gilgit to Rawal Pindi',
                    style: GoogleFonts.getFont(
                      "Urbanist",
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColor.titleColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
