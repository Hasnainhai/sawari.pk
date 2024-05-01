import 'package:flutter/material.dart';
import 'package:sawari_pk/res/components/colors.dart';

class OnButton extends StatelessWidget {
  const OnButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColor.primaryColor,
      ),
    );
  }
}
