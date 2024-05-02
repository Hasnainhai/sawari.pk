import 'package:flutter/material.dart';
import 'package:sawari_pk/utils/routes/routes_name.dart';
import 'package:sawari_pk/view/onboarding/onboarding_view1.dart';
import 'package:sawari_pk/view/onboarding/onboarding_view2.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.onBoarding1:
        return MaterialPageRoute(
            builder: (BuildContext context) => const OnBoardingView1());
      case RoutesName.onBoarding2:
        return MaterialPageRoute(
            builder: (BuildContext context) => const OnboardingView2());

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('No routes define'),
            ),
          );
        });
    }
  }
}
