import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sawari_pk/res/components/colors.dart';
import 'package:sawari_pk/res/components/icon_box.dart';
import '../../res/components/rounded_button.dart';
import '../../res/components/vertical_speacing.dart';
import 'widgets/add_friend.dart';

class ReferralView extends StatefulWidget {
  const ReferralView({super.key});

  @override
  State<ReferralView> createState() => _ReferralViewState();
}

class _ReferralViewState extends State<ReferralView> {
  void _showPopup(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Stack(
          children: [
            // fully blur with ImageFilter
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                color: Colors.transparent,
              ),
            ),
            // Blurred background
            ModalBarrier(
              color: Colors.black.withOpacity(0.1),
              dismissible: true,
            ),
            Center(
              child: Container(
                color: AppColor.whiteColor,
                height: 400,
                width: 359,
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'How it Works',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: AppColor.primaryColor,
                        ),
                      ),
                      SizedBox(height: 20),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Text(
                            textAlign: TextAlign.center,
                            'If a customer books a ticket for another person, it will be added to his profile that he has booked 1 seat. As he continues booking tickets for others, he will earn tokens or money. Once he crosses a certain number of ticket bookings (e.g., 50 tickets), he will receive tokens that he can use to book any ticket on our platform. After reaching the threshold of 50 tickets, he becomes our partner and will receive bonuses, cash, or tokens for every ticket he books.',
                            style: TextStyle(
                              fontSize: 18,
                              color: AppColor.textColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

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
          child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            const VerticalSpeacing(20),
            Image.asset(
              "images/earn.png",
              height: 219,
              width: 333,
            ),
            const VerticalSpeacing(40),
            Container(
              height: 470,
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
                  const VerticalSpeacing(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 52,
                        width: 250,
                        decoration: BoxDecoration(
                          color: AppColor.whiteColor,
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Your Promo Code is:\n8939289839",
                                style: GoogleFonts.getFont(
                                  "Urbanist",
                                  textStyle: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: AppColor.textColor,
                                  ),
                                ),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.copy_outlined,
                                    color: AppColor.titleColor,
                                  ))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 52,
                        width: 95,
                        child: RoundedButton(
                            title: 'Share',
                            onpress: () {
                              setState(() {
                                _showPopup(context);
                              });
                            }),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    height: 380,
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Invite a friend",
                                  style: GoogleFonts.getFont(
                                    "Urbanist",
                                    textStyle: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: AppColor.titleColor,
                                    ),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.insert_invitation_outlined,
                                    color: AppColor.titleColor,
                                  ),
                                ),
                              ],
                            ),
                            const AddFriend(),
                            const AddFriend(),
                            const AddFriend(),
                            const AddFriend(),
                            const AddFriend(),
                            const AddFriend(),
                            const VerticalSpeacing(40),
                          ],
                        ),

                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
