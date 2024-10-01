import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sawari_pk/utils/routes/routes_name.dart';

import '../../../res/components/colors.dart';
import '../../../res/components/vertical_speacing.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    super.key,
    required this.img,
    required this.agencyName,
    required this.departurePlace, required this.onTapDetail,
  });
  final String agencyName;
  final String departurePlace;
final Function onTapDetail;
  final String img;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        onTapDetail();
      },
      child: Container(
        height: 169,
        width: 146,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: AppColor.cardColor,
          border: Border.all(
            width: 0.5,
            color: AppColor.cardborderColor,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 107,
                width: 136,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                  ),
                  image: DecorationImage(
                    image: NetworkImage(img),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const VerticalSpeacing(8.0),
              Text.rich(
                textAlign: TextAlign.start,
                TextSpan(
                  text: '$agencyName\n',
                  style: GoogleFonts.getFont(
                    "Urbanist",
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColor.titleColor,
                    ),
                  ),
                  children: [
                    TextSpan(
                      text: departurePlace,
                      style: GoogleFonts.getFont(
                        "Urbanist",
                        textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColor.titleColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
