import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../res/components/colors.dart';
import '../../../res/components/vertical_speacing.dart';

class BookingCard extends StatelessWidget {
  const BookingCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Container(
        height: 190.0,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white, // Use Colors.white for simplicity
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('images/bus.png'),
                      ),
                      const SizedBox(width: 12.0),
                      Text(
                        'Company',
                        style: GoogleFonts.getFont(
                          "Urbanist",
                          textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppColor.titleColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          AppColor.primaryColor),
                    ),
                    child: const Text(
                      'VIP Seats',
                      style: TextStyle(color: AppColor.whiteColor),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              const VerticalSpeacing(10.0),
              Row(
                children: [
                  Text(
                    '12:30 AM',
                    style: GoogleFonts.getFont(
                      "Urbanist",
                      textStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: AppColor.titleColor,
                      ),
                    ),
                  ),
                  for (int i = 0; i < 13; i++)
                    Container(
                      width: 3.0,
                      height: 1.0,
                      color: AppColor.dotlineColor,
                      margin: const EdgeInsets.symmetric(horizontal: 2.0),
                    ),
                  Column(
                    children: [
                      SizedBox(
                        height: 15,
                        width: 35,
                        child: Center(
                          child: Image.asset('images/logo.png'),
                        ),
                      ),
                      Text(
                        '15hrs 24min',
                        style: GoogleFonts.getFont(
                          "Urbanist",
                          textStyle: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: AppColor.textColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  for (int i = 0; i < 13; i++)
                    Container(
                      width: 3.0,
                      height: 1.0,
                      color: AppColor.dotlineColor,
                      margin: const EdgeInsets.symmetric(horizontal: 2.0),
                    ),
                  const Spacer(),
                  Text(
                    '12:30 AM',
                    style: GoogleFonts.getFont(
                      "Urbanist",
                      textStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: AppColor.titleColor,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Danyore Gilgit',
                    style: GoogleFonts.getFont(
                      "Urbanist",
                      textStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: AppColor.textColor,
                      ),
                    ),
                  ),
                  Text(
                    'Islamabad Pakistan',
                    style: GoogleFonts.getFont(
                      "Urbanist",
                      textStyle: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: AppColor.textColor,
                      ),
                    ),
                  ),
                ],
              ),
              const VerticalSpeacing(10.0),
              Expanded(
                child: Stack(
                  children: [
                    SizedBox(
                      height: 24.0,
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                              (constraints.constrainWidth() / 6).floor(),
                              (index) => SizedBox(
                                width: 3.0,
                                height: 1.0,
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: AppColor.dotlineColor,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          AppColor.primaryColor.withOpacity(0.1)),
                    ),
                    child: const Text(
                      '2 Seats',
                      style: TextStyle(
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.w600),
                    ),
                    onPressed: () {},
                  ),
                  Text(
                    '2,200 PKR',
                    style: GoogleFonts.getFont(
                      "Urbanist",
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: AppColor.titleColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
