import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../res/components/colors.dart';

class SeatContainer extends StatelessWidget {
  final Color selectColor;
  final String seatno;
  final Function(String) onSeatSelected;
  final bool isSelected;

  const SeatContainer({
    Key? key,
    required this.selectColor,
    required this.seatno,
    required this.onSeatSelected,
    required this.isSelected,
  }) : super(key: key);

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
              seatno,
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
        const SizedBox(width: 54),
        GestureDetector(
          onTap: () {
            onSeatSelected(seatno);
          },
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              color: isSelected ? AppColor.primaryColor : Colors.transparent,
              border: Border.all(
                  color: isSelected
                      ? Colors.transparent
                      : AppColor.boxTxColor),
              borderRadius: BorderRadius.circular(2),
            ),
            child: Center(
              child: Icon(
                Icons.done,
                size: 14,
                color: isSelected
                    ? AppColor.whiteColor
                    : AppColor.boxTxColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

