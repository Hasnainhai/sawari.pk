import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sawari_pk/res/components/colors.dart';

class TextFieldCustom extends StatefulWidget {
  const TextFieldCustom({
    super.key,
    this.hintText,
    required int maxLines,
    required this.text,
    this.controller,
    this.keyboardType,
    this.obscureText = false,
    this.validator,
  });

  final String text;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String? hintText;
  final String? Function(String?)? validator;
  @override
  State<TextFieldCustom> createState() => _TextFieldCustomState();
}

class _TextFieldCustomState extends State<TextFieldCustom> {
  bool hidden = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.text,
            style: GoogleFonts.getFont(
              "Urbanist",
              textStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColor.titleColor,
              ),
            ),
          ),
          const SizedBox(height: 8),
          TextFormField(
            keyboardType: widget.keyboardType,
            obscureText: (widget.obscureText && hidden),
            style: const TextStyle(fontSize: 15),
            controller: widget.controller,
            decoration: InputDecoration(
              // prefixText:  widget.hintText,
              hintText: widget.hintText,
              filled: true,
              suffixIcon: widget.obscureText
                  ? GestureDetector(
                      onTap: () {
                        setState(() => hidden = !hidden);
                      },
                      child: Icon(
                        hidden
                            ? Icons.visibility_off_outlined
                            : Icons.visibility,
                        color:
                            hidden ? AppColor.textColor : AppColor.primaryColor,
                        size: 24,
                      ),
                    )
                  : null,
              fillColor: AppColor.whiteColor,
              contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16), // Adjust content padding if necessary
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Color(0xffD0D5DD)),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Color(0xffD0D5DD)),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            validator: widget.validator,
          ),
        ],
      ),
    );
  }
}
