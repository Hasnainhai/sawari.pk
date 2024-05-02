import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sawari_pk/res/components/colors.dart';
import 'package:sawari_pk/res/components/vertical_speacing.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  "images/logo.png",
                  height: 66,
                  width: 168,
                ),
              ),
              const VerticalSpeacing(60),
              Text(
                "Sign In",
                style: GoogleFonts.getFont(
                  "Urbanist",
                  textStyle: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: AppColor.titleColor,
                  ),
                ),
              ),
              const VerticalSpeacing(8),
              Text(
                "Please fill your detail to access your account.",
                style: GoogleFonts.getFont(
                  "Urbanist",
                  textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColor.textColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
