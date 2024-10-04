import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'colors.dart';

class LoadingManager extends StatelessWidget {
  const LoadingManager(
      {super.key, required this.isLoading, required this.child});
  final bool isLoading;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        AnimatedOpacity(
          opacity: isLoading ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 300),
          child: isLoading
              ? Container(
                  color: Colors.black.withOpacity(0.7),
                  child: const Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Replace CircularProgressIndicator with SpinKitDualRing
                        SpinKitDualRing(
                          color: AppColor.primaryColor,
                          size: 50.0, // Adjust size as needed
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Loading...',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : Container(),
        ),
      ],
    );
  }
}
