import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sawari_pk/res/components/vertical_speacing.dart';
import 'package:sawari_pk/view/home/widgets/homeCard.dart';
import '../../res/components/colors.dart';
import '../../res/components/icon_box.dart';
import '../../res/components/profile_box.dart';
import 'widgets/expanded_container.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8FAFC),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                isThreeLine: false,
                leading: const IconBox(bgImg: 'images/location.png'),
                title: Text(
                  'Your Location',
                  style: GoogleFonts.getFont(
                    "Urbanist",
                    textStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: AppColor.titleColor,
                    ),
                  ),
                ),
                subtitle: Text(
                  'Danyore, Gilgit Baltistan',
                  style: GoogleFonts.getFont(
                    "Urbanist",
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColor.textColor,
                    ),
                  ),
                ),
                trailing: const ProfileBox(
                  bgImg:
                      'https://img.freepik.com/free-psd/3d-illustration-human-avatar-profile_23-2150671142.jpg?size=338&ext=jpg&ga=GA1.1.553209589.1714521600&semt=ais',
                ),
              ),
              const VerticalSpeacing(20.0),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      textAlign: TextAlign.start,
                      TextSpan(
                        text: 'Your Getway to Streamless\n',
                        style: GoogleFonts.getFont(
                          "Urbanist",
                          textStyle: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: AppColor.textColor,
                          ),
                        ),
                        children: [
                          TextSpan(
                            text: 'Travel!',
                            style: GoogleFonts.getFont(
                              "Urbanist",
                              textStyle: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: AppColor.textColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const VerticalSpeacing(20.0),
                    const ExpandableContainer(),
                    const VerticalSpeacing(30.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Choose Near You!',
                          style: GoogleFonts.getFont(
                            "Urbanist",
                            textStyle: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: AppColor.titleColor,
                            ),
                          ),
                        ),
                        Text(
                          'See all',
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
                  ],
                ),
              ),
              const VerticalSpeacing(16.0),
              // Choose near you card
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: SizedBox(
                  height: 170,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        HomeCard(img: 'images/bus.png'),
                        SizedBox(width: 16.0),
                        HomeCard(img: 'images/bus.png'),
                        SizedBox(width: 16.0),
                        HomeCard(img: 'images/bus.png'),
                      ],
                    ),
                  ),
                ),
              ),
              const VerticalSpeacing(30.0),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Agencies',
                      style: GoogleFonts.getFont(
                        "Urbanist",
                        textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: AppColor.titleColor,
                        ),
                      ),
                    ),
                    Text(
                      'See all',
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
              const VerticalSpeacing(16.0),
              // Choose Popular Agencies card
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: SizedBox(
                  height: 170,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        HomeCard(img: 'images/bus1.png'),
                        SizedBox(width: 16.0),
                        HomeCard(img: 'images/bus1.png'),
                        SizedBox(width: 16.0),
                        HomeCard(img: 'images/bus1.png'),
                      ],
                    ),
                  ),
                ),
              ),
              const VerticalSpeacing(30.0),
            ],
          ),
        ),
      ),
    );
  }
}
