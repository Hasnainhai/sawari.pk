import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sawari_pk/res/components/colors.dart';

class OnBoardingView1 extends StatelessWidget {
  const OnBoardingView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Row(
            children: [
              Text(
                "Hello!",
                style: GoogleFonts.getFont(
                  "Poppins",
                  textStyle: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: AppColor.titleColor,
                  ),
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
