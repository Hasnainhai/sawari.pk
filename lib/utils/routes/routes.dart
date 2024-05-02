import 'package:flutter/material.dart';
import 'package:sawari_pk/utils/routes/routes_name.dart';
import 'package:sawari_pk/view/auth/login_view.dart';

import 'package:sawari_pk/view/home/home_view.dart';

import '../../view/onboarding/onboarding_view1.dart';

import 'package:sawari_pk/view/onboarding/onboarding_view2.dart';
import 'package:sawari_pk/view/onboarding/onboarding_view3.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.onBoarding1:
        return MaterialPageRoute(
            builder: (BuildContext context) => const OnBoardingView1());
      case RoutesName.onBoarding2:
        return MaterialPageRoute(
            builder: (BuildContext context) => const OnboardingView2());
      case RoutesName.onBoarding3:
        return MaterialPageRoute(
            builder: (BuildContext context) => const OnboardingView3s());
      case RoutesName.login:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginView());
      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeView());

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
