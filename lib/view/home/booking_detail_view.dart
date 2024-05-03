import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sawari_pk/res/components/colors.dart';
import 'package:sawari_pk/res/components/icon_box.dart';
import 'package:sawari_pk/res/components/profile_box.dart';
import 'package:sawari_pk/res/components/rounded_button.dart';
import 'package:sawari_pk/res/components/vertical_speacing.dart';
import 'package:sawari_pk/utils/routes/routes_name.dart';
import 'package:sawari_pk/view/home/widgets/booking_detail_widget.dart';

class BookingDetailView extends StatelessWidget {
  const BookingDetailView({super.key});

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
            child: Image.asset(
              "images/busdetail.png",
              height: 162,
              width: 229,
            ),
          ),
          const VerticalSpeacing(40),
          Container(
            height: 495,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Color(0xff05324D),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    right: 20,
                    top: 20,
                  ),
                  child: Text(
                    "Hyex",
                    style: GoogleFonts.getFont(
                      "Urbanist",
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: AppColor.whiteColor,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    right: 20,
                  ),
                  child: Text(
                    "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                    style: GoogleFonts.getFont(
                      "Urbanist",
                      textStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: AppColor.whiteColor,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  height: 399,
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Booking Details",
                            style: GoogleFonts.getFont(
                              "Urbanist",
                              textStyle: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: AppColor.titleColor,
                              ),
                            ),
                          ),
                          const VerticalSpeacing(10),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(
                                color: AppColor.titleColor,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          BookingDetailWidget(
                                            detail: "Seat Number",
                                            value: "A6",
                                          ),
                                          BookingDetailWidget(
                                            detail: "Date",
                                            value: "9/12/2023",
                                          ),
                                          BookingDetailWidget(
                                            detail: "Departure Time",
                                            value: "12:30PM",
                                          ),
                                          BookingDetailWidget(
                                            detail: "Fare",
                                            value: "3000",
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          BookingDetailWidget(
                                            detail: "Year",
                                            value: "2022",
                                          ),
                                          BookingDetailWidget(
                                            detail: "Destination",
                                            value: "Skardu",
                                          ),
                                          BookingDetailWidget(
                                            detail: "Arrival Time",
                                            value: "06:30PM",
                                          ),
                                          BookingDetailWidget(
                                            detail: "Arrival",
                                            value: "Gilgit",
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const VerticalSpeacing(
                            40,
                          ),
                          RoundedButton(
                              title: "Book Now",
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
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
