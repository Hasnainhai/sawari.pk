import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sawari_pk/res/components/colors.dart';
import 'package:sawari_pk/res/components/icon_box.dart';
import 'package:sawari_pk/res/components/profile_box.dart';
import 'package:sawari_pk/res/components/rounded_button.dart';
import 'package:sawari_pk/res/components/vertical_speacing.dart';
import 'package:sawari_pk/utils/routes/routes_name.dart';
import 'package:sawari_pk/view/home/widgets/seat_container.dart';

import '../../model/home_vehical_modal.dart';

class SelectSeatView extends StatelessWidget {
  const SelectSeatView({super.key, required this.popularSchedule});
  final PopularSchedule popularSchedule;

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
                IconBox(
                  icon: Icons.arrow_back,
                  color: AppColor.primaryColor,
                ),
                Text(
                  popularSchedule.vehicle.agency.toString(),
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
            height: MediaQuery.of(context).size.height / 2.1,
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
                    Center(
                      child: Text(
                        "Select the Available Seats",
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
                      40,
                    ),
                    Text(
                      "Available Seats",
                      style: GoogleFonts.getFont(
                        "Urbanist",
                        textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: AppColor.titleColor,
                        ),
                      ),
                    ),
                    const VerticalSpeacing(
                      10,
                    ),
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
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SeatContainer(
                                    selectColor: Colors.transparent,
                                    seatno: "02"),
                                SeatContainer(
                                    selectColor: Colors.transparent,
                                    seatno: "17"),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SeatContainer(
                                    selectColor: Colors.transparent,
                                    seatno: "04"),
                                SeatContainer(
                                    selectColor: Colors.transparent,
                                    seatno: "14"),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SeatContainer(
                                    selectColor: Colors.transparent,
                                    seatno: "06"),
                                SeatContainer(
                                    selectColor: Colors.transparent,
                                    seatno: "20"),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SeatContainer(
                                    selectColor: Colors.transparent,
                                    seatno: "08"),
                                SeatContainer(
                                    selectColor: Colors.transparent,
                                    seatno: "13"),
                              ],
                            )
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
                            RoutesName.bookingDetailview,
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
