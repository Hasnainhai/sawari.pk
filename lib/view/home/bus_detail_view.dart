import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sawari_pk/model/home_vehical_modal.dart';
import 'package:sawari_pk/res/components/colors.dart';
import 'package:sawari_pk/res/components/icon_box.dart';
import 'package:sawari_pk/res/components/profile_box.dart';
import 'package:sawari_pk/res/components/rounded_button.dart';
import 'package:sawari_pk/res/components/vertical_speacing.dart';
import 'package:sawari_pk/view/home/seat_selection.dart';
import 'package:sawari_pk/view/home/widgets/deatils_container.dart';

class BusDetailView extends StatefulWidget {
  const BusDetailView({super.key, required this.popularSchedule});

  final PopularSchedule popularSchedule;

  @override
  State<BusDetailView> createState() => _BusDetailViewState();
}

class _BusDetailViewState extends State<BusDetailView> {



  @override
  Widget build(BuildContext context) {
    final scheduleDate = DateTime.parse(
        widget.popularSchedule.scheduleDate.toString()); // If it's a string
    final formattedDate = DateFormat('dd/MM/yyyy').format(scheduleDate);
    final formattedDepartureTime =
        DateFormat('hh:mm a').format(widget.popularSchedule.departureTime);
    final formattedArrivalTime =
        DateFormat('hh:mm a').format(widget.popularSchedule.arrivalTime);
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
                  widget.popularSchedule.vehicle.agency.toString(),
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
            child: SizedBox(
              height: 200,
              width: double.infinity,
              child: Image.network(widget.popularSchedule.vehicle.image.toString(),
                  fit: BoxFit.cover),
            ),
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
                    DetailContainer(
                      name: 'Date',
                      value: formattedDate,
                    ),
                    const VerticalSpeacing(
                      20,
                    ),
                    DetailContainer(
                      name: 'Departure Destination',
                      value: widget.popularSchedule.departurePlace,
                    ),
                    const VerticalSpeacing(
                      20,
                    ),
                    DetailContainer(
                      name: 'Arrival Destination',
                      value: widget.popularSchedule.destination,
                    ),
                    const VerticalSpeacing(
                      20,
                    ),
                    DetailContainer(
                      name: 'Departure Time',
                      value: formattedDepartureTime,
                    ),
                    const VerticalSpeacing(
                      20,
                    ),
                    DetailContainer(
                      name: 'Arrival Time',
                      value: formattedArrivalTime,
                    ),
                    const VerticalSpeacing(
                      40,
                    ),
                    RoundedButton(
                        title: "Check for Available Seats",
                        onpress: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SelectSeatView(
                                  popularSchedule: widget.popularSchedule)));
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
