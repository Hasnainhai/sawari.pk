import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sawari_pk/res/components/vertical_speacing.dart';
import 'package:sawari_pk/utils/routes/routes_name.dart';
import '../../res/components/colors.dart';
import '../../res/components/icon_box.dart';
import 'widgets/profile_feature_widget.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const VerticalSpeacing(20.0),
                Row(
                  children: [
                    IconBox(
                      icon: Icons.arrow_back_rounded,
                      color: AppColor.primaryColor,
                    ),
                    SizedBox(width: width / 3.5),
                    Text(
                      'Profile',
                      style: GoogleFonts.getFont(
                        "Urbanist",
                        textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: AppColor.titleColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const VerticalSpeacing(40.0),
                const CircleAvatar(
                    radius: 50.0,
                    backgroundImage: NetworkImage(
                        'https://www.shutterstock.com/image-photo/head-shot-portrait-close-smiling-600nw-1714666150.jpg')),
                const VerticalSpeacing(16.0),
                Text(
                  'Hassnain haider',
                  style: GoogleFonts.getFont(
                    "Urbanist",
                    textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: AppColor.titleColor,
                    ),
                  ),
                ),
                const VerticalSpeacing(16.0),
                SizedBox(
                  height: height / 2,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        ProfileFeatureWidget(
                          icon: Icons.notifications,
                          title: 'Notification',
                          ontap: () {},
                        ),
                        ProfileFeatureWidget(
                          icon: Icons.settings,
                          title: 'Setting',
                          ontap: () {},
                        ),
                        ProfileFeatureWidget(
                          icon: Icons.book,
                          title: 'Book and Earn',
                          ontap: () {},
                        ),
                        ProfileFeatureWidget(
                          icon: Icons.location_on,
                          title: 'My Location',
                          ontap: () {},
                        ),
                        ProfileFeatureWidget(
                          icon: Icons.wallet,
                          title: 'Wallet',
                          ontap: () {},
                        ),
                        ProfileFeatureWidget(
                          icon: Icons.phone,
                          title: 'Contact Number',
                          ontap: () {},
                        ),
                        ProfileFeatureWidget(
                          icon: Icons.watch_later,
                          title: 'My Bookings',
                          ontap: () {},
                        ),
                        ProfileFeatureWidget(
                          icon: Icons.payment_outlined,
                          title: 'Referral and Earn',
                          ontap: () {
                            Navigator.pushNamed(context, RoutesName.referral);
                          },
                        ),
                        ProfileFeatureWidget(
                          icon: Icons.save,
                          title: 'Saved Agencies',
                          ontap: () {},
                        ),
                        const VerticalSpeacing(30.0),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
