import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sawari_pk/res/components/colors.dart';
import 'package:sawari_pk/res/components/vertical_speacing.dart';
import 'package:sawari_pk/utils/routes/routes_name.dart';
import 'package:sawari_pk/view/onboarding/widgets/on_button.dart';

import '../../view_model/service/splashServicer.dart';

class OnBoardingView1 extends StatefulWidget {
  const OnBoardingView1({super.key});

  @override
  State<OnBoardingView1> createState() => _OnBoardingView1State();
}

class _OnBoardingView1State extends State<OnBoardingView1> {
  @override
  void initState() {
    SplashServices splashServices = SplashServices();

    splashServices.checkAuthenTication(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const VerticalSpeacing(20),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, RoutesName.signup);
                  },
                  child: Text(
                    "Skip",
                    style: GoogleFonts.getFont(
                      "Urbanist",
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColor.textColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const VerticalSpeacing(20),
          Image.asset(
            "images/onboarding1.png",
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
            child: Row(
              children: [
                Text(
                  "Welcome to Sawari.",
                  style: GoogleFonts.getFont(
                    "Urbanist",
                    textStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                      color: AppColor.titleColor,
                    ),
                  ),
                ),
                Text(
                  "pk",
                  style: GoogleFonts.getFont(
                    "Urbanist",
                    textStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                      color: AppColor.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Your Journey Starts HereGet ready to embark on a hassle-free travel experience with Sawari.pk. From booking to boarding, we've got all your travel needs covered.",
              style: GoogleFonts.getFont(
                "Urbanist",
                textStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColor.textColor,
                ),
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20,
              bottom: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 8,
                      width: 19,
                      decoration: BoxDecoration(
                        color: AppColor.primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        color: AppColor.primaryColor.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        color: AppColor.primaryColor.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    )
                  ],
                ),
                OnButton(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      RoutesName.onBoarding2,
                    );
                  },
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
