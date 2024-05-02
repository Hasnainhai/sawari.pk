import 'package:flutter/material.dart';
import 'package:sawari_pk/res/components/colors.dart';

class IconBox extends StatelessWidget {
  const IconBox({
    super.key,
    required this.bgImg,
  });
  final String bgImg;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      width: 40.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: AppColor.primaryColor.withOpacity(0.1),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(bgImg),
        ),
      ),
    );
  }
}
