import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../res/components/colors.dart';

class SeatContainer extends StatefulWidget {
  const SeatContainer(
      {super.key, required this.selectColor, required this.seatno});
  final Color selectColor;
  final String seatno;

  @override
  State<SeatContainer> createState() => _SeatContainerState();
}

class _SeatContainerState extends State<SeatContainer> {
  bool isSelect = false;
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
              isSelect = !isSelect;
            });
          },
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                color: isSelect == true
                    ? AppColor.primaryColor
                    : Colors.transparent,
                border: Border.all(
                    color: isSelect == true
                        ? Colors.transparent
                        : AppColor.boxTxColor),
                borderRadius: BorderRadius.circular(2)),
            child: Center(
              child: Icon(
                Icons.done,
                size: 14,
                color: isSelect == true
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
