import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sawari_pk/res/components/colors.dart';

class SeatContainer extends StatefulWidget {
  const SeatContainer(
      {super.key, required this.selectColor, required this.seatno});
  final Color selectColor;
  final String seatno;

  @override
  State<SeatContainer> createState() => _SeatContainerState();
}

class _SeatContainerState extends State<SeatContainer> {
  bool isselect = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Seat No.",
              style: GoogleFonts.getFont(
                "Urbanist",
                textStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColor.textColor,
                ),
              ),
            ),
            Text(
              widget.seatno,
              style: GoogleFonts.getFont(
                "Urbanist",
                textStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColor.titleColor,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 54,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              isselect = !isselect;
            });
          },
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                color: isselect == true
                    ? AppColor.primaryColor
                    : Colors.transparent,
                border: Border.all(
                    color: isselect == true
                        ? Colors.transparent
                        : AppColor.boxTxColor),
                borderRadius: BorderRadius.circular(2)),
            child: Center(
              child: Icon(
                Icons.done,
                size: 14,
                color: isselect == true
                    ? AppColor.whiteColor
                    : AppColor.boxTxColor,
              ),
            ),
          ),
        )
      ],
    );
  }
}
