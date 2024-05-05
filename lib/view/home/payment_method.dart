import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sawari_pk/res/components/colors.dart';
import 'package:sawari_pk/res/components/icon_box.dart';
import 'package:sawari_pk/res/components/profile_box.dart';
import 'package:sawari_pk/res/components/vertical_speacing.dart';
import 'package:sawari_pk/view/home/widgets/payment_widget.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  bool button1 = true;
  bool button2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const IconBox(
                  icon: Icons.arrow_back,
                  color: AppColor.primaryColor,
                ),
                Text(
                  "Agency Name",
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
            const VerticalSpeacing(30),
            Text(
              "Choose Payment Method",
              style: GoogleFonts.getFont(
                "Urbanist",
                textStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColor.titleColor,
                ),
              ),
            ),
            const VerticalSpeacing(20),
            InkWell(
              onTap: () {
                setState(() {
                  button1 = !button1;
                  button2 = false;
                });
              },
              child: PaymentWidget(
                cardColor: button1 == true
                    ? AppColor.primaryColor
                    : AppColor.whiteColor,
                textColor:
                    button1 == true ? AppColor.whiteColor : AppColor.textColor,
                imgColor:
                    button1 == true ? AppColor.whiteColor : AppColor.textColor,
                img: "images/digital.png",
                heading: "Digital Payment",
                subHeading: "Faster and safer way to send money",
              ),
            ),
            const VerticalSpeacing(10),
            InkWell(
              onTap: () {
                setState(() {
                  button2 = !button2;
                  button1 = false;
                });
              },
              child: PaymentWidget(
                cardColor: button2 == true
                    ? AppColor.primaryColor
                    : AppColor.whiteColor,
                textColor:
                    button2 == true ? AppColor.whiteColor : AppColor.textColor,
                imgColor:
                    button2 == true ? AppColor.whiteColor : AppColor.textColor,
                img: "images/cash.png",
                heading: "Digital Payment",
                subHeading: "Faster and safer way to send money",
              ),
            ),
          ],
        ),
      )),
    );
  }
}
