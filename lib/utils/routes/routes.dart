// import 'package:flutter/material.dart';
// import 'package:mvvm/utils/routes/routes_name.dart';
// import 'package:mvvm/view/Home_Screen.dart';
// import 'package:mvvm/view/Login_view.dart';
// import 'package:mvvm/view/SignUpView.dart';
// import 'package:mvvm/view/splashView.dart';

import 'package:flutter/material.dart';
import 'package:sawari_pk/utils/routes/routes_name.dart';
import 'package:sawari_pk/view/onboarding/onboarding_view1.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.onBoarding1:
        return MaterialPageRoute(
            builder: (BuildContext context) => const OnBoardingView1());
      // case RoutesName.splash:
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => const SplashView());
      // case RoutesName.home:
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => const HomeScreen());
      // case RoutesName.login:
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => const LoginScreen());
      // case RoutesName.signUp:
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => const SignUpView());
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
