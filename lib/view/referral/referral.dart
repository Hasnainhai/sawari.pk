import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sawari_pk/res/components/colors.dart';
import 'package:sawari_pk/res/components/icon_box.dart';
import 'package:sawari_pk/res/components/profile_box.dart';

import '../../res/components/rounded_button.dart';
import '../../res/components/vertical_speacing.dart';
import 'widgets/add_friend.dart';

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
                      child: RoundedButton(title: 'Share', onpress: () {}),
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
      )),
    );
  }
}
