import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sawari_pk/res/components/colors.dart';
import 'package:sawari_pk/res/components/custom_text_field.dart';
import 'package:sawari_pk/res/components/icon_box.dart';

import '../../res/components/rounded_button.dart';
import '../../res/components/vertical_speacing.dart';

class ReferralView extends StatelessWidget {
  const ReferralView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: const Padding(
          padding: EdgeInsets.only(left: 10, top: 10),
          child: IconBox(
            icon: Icons.arrow_back_rounded,
            color: AppColor.primaryColor,
          ),
        ),
        title: Text(
          'Invite & Earn',
          style: GoogleFonts.getFont(
            "Urbanist",
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: AppColor.titleColor,
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.error_outline,
                color: Color(0xffFFCD33),
              ))
        ],
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
        children: [
          const VerticalSpeacing(20),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Image.asset(
              "images/earn.png",
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
                // const Padding(
                //   padding: EdgeInsets.only(
                //     left: 20.0,
                //     right: 20,
                //   ),
                //   child: Row(
                //     children: [
                //       TextFieldCustom(
                //         maxLines: 2,
                //         text: 'Your Promo Code is\n1234567890',
                //       ),
                //     ],
                //   ),
                // ),
                // const Spacer(),
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
                                        children: [],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [],
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
                          RoundedButton(title: "Book Now", onpress: () {}),
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
