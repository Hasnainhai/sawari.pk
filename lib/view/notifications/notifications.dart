import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sawari_pk/res/components/colors.dart';
import 'package:sawari_pk/res/components/icon_box.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: IconBox(bgImg: 'images/backIcon.png'),
        ),
        title: Text(
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
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: AppColor.primaryColor,
                size: 30.0,
              ))
        ],
      ),
      body: const Center(
        child: Text('Notifications...'),
      ),
    );
  }
}
