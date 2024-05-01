import 'package:flutter/material.dart';
import 'package:sawari_pk/res/components/colors.dart';

class OnButton extends StatelessWidget {
  const OnButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColor.primaryColor,
          border: Border.all(
            width: 5,
            color: const Color(0xffF0F0F0),
          )),
      child: const Icon(
        Icons.arrow_forward_outlined,
        color: AppColor.whiteColor,
      ),
    );
  }
}
