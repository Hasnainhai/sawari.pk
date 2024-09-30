import 'package:flutter/material.dart';
import 'package:sawari_pk/res/components/colors.dart';

class IconBox extends StatelessWidget {
  IconBox({
    super.key,
    this.bgImg,
    this.icon,
    this.color,
    this.onTap,
  });
  final String? bgImg;
  final IconData? icon;
  final Color? color;
  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      width: 40.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: AppColor.primaryColor.withOpacity(0.1),
      ),
      child: InkWell(
        onTap: () {
          onTap;
        },
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: icon == null
                ? Image.asset(bgImg!)
                : Icon(
                    icon,
                    color: color,
                  ),
          ),
        ),
      ),
    );
  }
}
