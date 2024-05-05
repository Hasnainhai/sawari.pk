import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentWidget extends StatelessWidget {
  const PaymentWidget(
      {super.key,
      required this.cardColor,
      required this.textColor,
      required this.imgColor,
      required this.img,
      required this.heading,
      required this.subHeading});
  final Color cardColor;
  final Color textColor;
  final Color imgColor;
  final String img;
  final String heading;
  final String subHeading;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 73,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.asset(
              img,
              color: imgColor,
            ),
            const SizedBox(
              width: 18,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  heading,
                  style: GoogleFonts.getFont(
                    "Urbanist",
                    textStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: textColor,
                    ),
                  ),
                ),
                Text(
                  subHeading,
                  style: GoogleFonts.getFont(
                    "Urbanist",
                    textStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: textColor,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
