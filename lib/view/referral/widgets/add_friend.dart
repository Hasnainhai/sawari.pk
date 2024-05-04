import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../res/components/colors.dart';

class AddFriend extends StatelessWidget {
  const AddFriend({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundImage: NetworkImage(
            'https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg'),
      ),
      title: Text(
        "hasnain haider",
        style: GoogleFonts.getFont(
          "Urbanist",
          textStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: AppColor.titleColor,
          ),
        ),
      ),
      subtitle: Text(
        "twitter",
        style: GoogleFonts.getFont(
          "Urbanist",
          textStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: AppColor.textColor,
          ),
        ),
      ),
      trailing: IconButton(
          onPressed: () {}, icon: Icon(Icons.person_add_alt_1_outlined)),
    );
  }
}
