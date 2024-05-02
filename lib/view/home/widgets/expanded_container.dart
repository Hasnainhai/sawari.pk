import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../res/components/colors.dart';
import '../../../res/components/vertical_speacing.dart';

class ExpandableContainer extends StatefulWidget {
  const ExpandableContainer({super.key});

  @override
  _ExpandableContainerState createState() => _ExpandableContainerState();
}

class _ExpandableContainerState extends State<ExpandableContainer> {
  bool _isExpanded = false;

  void _toggleExpand() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleExpand,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height:
            _isExpanded ? 232.0 : 40.0, // Adjust the expanded height as needed
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const VerticalSpeacing(10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Book your journey',
                    style: GoogleFonts.getFont(
                      "Urbanist",
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColor.boxTxColor,
                      ),
                    ),
                  ),
                  Icon(
                    _isExpanded
                        ? Icons.expand_less_outlined
                        : Icons.expand_more_outlined,
                    color: AppColor.downIconColor,
                  ),
                ],
              ),
              Visibility(
                visible: _isExpanded,
                child: Column(
                  children: [
                    const VerticalSpeacing(10.0),
                    Container(
                      height: 37,
                      width: double.infinity,
                      color: AppColor.boxTxColor.withOpacity(0.1),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Departure',
                              style: GoogleFonts.getFont(
                                "Urbanist",
                                textStyle: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.boxTxColor,
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.expand_more_outlined,
                              color: AppColor.downIconColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const VerticalSpeacing(10.0),
                    Container(
                      height: 37,
                      width: double.infinity,
                      color: AppColor.boxTxColor.withOpacity(0.1),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Arrival',
                              style: GoogleFonts.getFont(
                                "Urbanist",
                                textStyle: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.boxTxColor,
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.expand_more_outlined,
                              color: AppColor.downIconColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const VerticalSpeacing(10.0),
                    Container(
                      height: 37,
                      width: double.infinity,
                      color: AppColor.boxTxColor.withOpacity(0.1),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Departure Date',
                              style: GoogleFonts.getFont(
                                "Urbanist",
                                textStyle: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.boxTxColor,
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.expand_more_outlined,
                              color: AppColor.downIconColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const VerticalSpeacing(10.0),
                    Container(
                      height: 37,
                      width: double.infinity,
                      color: AppColor.boxTxColor.withOpacity(0.1),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Busses List',
                              style: GoogleFonts.getFont(
                                "Urbanist",
                                textStyle: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.boxTxColor,
                                ),
                              ),
                            ),
                            const Icon(
                              Icons.expand_more_outlined,
                              color: AppColor.downIconColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
