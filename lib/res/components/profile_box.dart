import 'package:flutter/material.dart';
import 'package:sawari_pk/res/components/colors.dart';

class ProfileBox extends StatelessWidget {
  const ProfileBox({
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
          color: AppColor.primaryColor,
          image: DecorationImage(
            image: AssetImage(bgImg),
            fit: BoxFit.contain,
          )),
    );
  }
}
