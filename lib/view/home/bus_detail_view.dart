import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sawari_pk/res/components/colors.dart';
import 'package:sawari_pk/res/components/icon_box.dart';
import 'package:sawari_pk/res/components/profile_box.dart';
import 'package:sawari_pk/res/components/rounded_button.dart';
import 'package:sawari_pk/res/components/vertical_speacing.dart';
import 'package:sawari_pk/utils/routes/routes_name.dart';
import 'package:sawari_pk/view/home/widgets/deatils_container.dart';

class BusDetailView extends StatelessWidget {
  const BusDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEBEBEB),
      body: SafeArea(
          child: Column(
        children: [
          const VerticalSpeacing(20),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const IconBox(
                  icon: Icons.arrow_back,
                  color: AppColor.primaryColor,
                ),
                Text(
                  "Agency Name",
                  style: GoogleFonts.getFont(
                    "Urbanist",
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: AppColor.titleColor,
                    ),
                  ),
                ),
                const ProfileBox(
                    bgImg:
                        "https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671142.jpg?size=338&ext=jpg&ga=GA1.1.553209589.1714521600&semt=ais")
              ],
            ),
          ),
          const VerticalSpeacing(20),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Image.asset("images/busdetail.png"),
          ),
          const VerticalSpeacing(40),
          Container(
            height: MediaQuery.of(context).size.height / 1.96,
            decoration: const BoxDecoration(
              color: AppColor.whiteColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        "Let’s begin your Journey",
                        style: GoogleFonts.getFont(
                          "Urbanist",
                          textStyle: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: AppColor.titleColor,
                          ),
                        ),
                      ),
                    ),
                    const VerticalSpeacing(
                      50,
                    ),
                    const DetailContainer(
                      name: 'Date',
                      value: '9/12/2023',
                    ),
                    const VerticalSpeacing(
                      20,
                    ),
                    const DetailContainer(
                      name: 'Departure Destination',
                      value: 'Glt',
                    ),
                    const VerticalSpeacing(
                      20,
                    ),
                    const DetailContainer(
                      name: 'Arrival Destination',
                      value: 'Skardu',
                    ),
                    const VerticalSpeacing(
                      20,
                    ),
                    const DetailContainer(
                      name: 'Departure Time',
                      value: '06:30 Pm',
                    ),
                    const VerticalSpeacing(
                      40,
                    ),
                    RoundedButton(
                        title: "Check for Available Seats",
                        onpress: () {
                          Navigator.pushNamed(
                            context,
                            RoutesName.seatSelection,
                          );
                        }),
                    const VerticalSpeacing(
                      40,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
