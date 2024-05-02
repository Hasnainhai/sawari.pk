import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sawari_pk/res/components/colors.dart';
import 'package:sawari_pk/res/components/icon_box.dart';
import 'package:sawari_pk/res/components/vertical_speacing.dart';
import 'package:sawari_pk/view/notifications/widgets/notificationCart.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const VerticalSpeacing(20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const IconBox(
                icon: Icons.arrow_back_rounded,
                color: AppColor.primaryColor,
              ),
              Text(
                'Notifications',
                style: GoogleFonts.getFont(
                  "Urbanist",
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColor.titleColor,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  color: AppColor.primaryColor,
                  size: 30.0,
                ),
              ),
            ],
          ),
          const VerticalSpeacing(30.0),
          Text(
            'Today',
            style: GoogleFonts.getFont(
              "Urbanist",
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: AppColor.titleColor,
              ),
            ),
          ),
          const VerticalSpeacing(10.0),
          const NotificationCard(),
          const VerticalSpeacing(16.0),
          const NotificationCard(),
          const VerticalSpeacing(30.0),
          Text(
            'Yesrerday',
            style: GoogleFonts.getFont(
              "Urbanist",
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: AppColor.titleColor,
              ),
            ),
          ),
          const VerticalSpeacing(10.0),
          const NotificationCard(),
          const VerticalSpeacing(16.0),
          const NotificationCard(),
        ],
      ),
    )));
  }
}
