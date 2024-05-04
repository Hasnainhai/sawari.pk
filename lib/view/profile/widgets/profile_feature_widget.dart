import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../res/components/colors.dart';

class ProfileFeatureWidget extends StatelessWidget {
  const ProfileFeatureWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.ontap,
  });
  final IconData icon;
  final String title;
  final Function ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ontap();
      },
      child: Container(
        height: 60.0,
        width: double.infinity,
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: AppColor.titleColor,
              width: 0.5,
            ),
          ),
        ),
        child: Row(
          children: [
            const SizedBox(width: 8.0),
            IconButton(
              onPressed: () {},
              icon: Icon(
                icon,
                color: AppColor.primaryColor,
              ),
            ),
            const SizedBox(width: 20.0),
            Text(
              title,
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
      ),
    );
  }
}
