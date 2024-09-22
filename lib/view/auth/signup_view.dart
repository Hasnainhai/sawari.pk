import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sawari_pk/res/components/colors.dart';
import 'package:sawari_pk/res/components/custom_text_field.dart';
import 'package:sawari_pk/res/components/rounded_button.dart';
import 'package:sawari_pk/res/components/vertical_speacing.dart';
import 'package:sawari_pk/utils/routes/routes_name.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
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
                  "Sign up",
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
                const VerticalSpeacing(30),
                const TextFieldCustom(
                  maxLines: 2,
                  text: "User Name",
                ),
                const TextFieldCustom(
                  maxLines: 2,
                  text: "Email",
                ),
                const TextFieldCustom(
                  maxLines: 2,
                  text: "Create password",
                  obscureText: true,
                ),
                const TextFieldCustom(
                  maxLines: 2,
                  text: "Confirm password",
                  obscureText: true,
                ),
                const VerticalSpeacing(30),
                RoundedButton(
                    title: "Sign in",
                    onpress: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, RoutesName.dashboard, (route) => false);
                    }),
                const VerticalSpeacing(30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have  an account?",
                      style: GoogleFonts.getFont(
                        "Urbanist",
                        textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColor.titleColor,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          RoutesName.login,
                        );
                      },
                      child: Text(
                        "Sign up",
                        style: GoogleFonts.getFont(
                          "Urbanist",
                          textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColor.primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const VerticalSpeacing(
                  30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
