import 'package:flutter/material.dart';
import 'package:sawari_pk/utils/routes/routes_name.dart';
import 'package:sawari_pk/view/auth/login_view.dart';
import 'package:sawari_pk/view/auth/signup_view.dart';
import 'package:sawari_pk/view/booking/booking.dart';
import 'package:sawari_pk/view/home/booking_detail_view.dart';
import 'package:sawari_pk/view/home/bus_detail_view.dart';
import 'package:sawari_pk/view/home/dashboard/bottom_bar.dart';

import 'package:sawari_pk/view/home/home_view.dart';
import 'package:sawari_pk/view/home/payment_method.dart';
import 'package:sawari_pk/view/home/seat_selection.dart';
import 'package:sawari_pk/view/notifications/notifications.dart';
import 'package:sawari_pk/view/profile/profile.dart';
import 'package:sawari_pk/view/referral/referral.dart';

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
      case RoutesName.signup:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SignupView());
      case RoutesName.dashboard:
        return MaterialPageRoute(
            builder: (BuildContext context) => const DashBoardView());
      case RoutesName.notifications:
        return MaterialPageRoute(
            builder: (BuildContext context) => const NotificationsView());
      case RoutesName.booking:
        return MaterialPageRoute(
            builder: (BuildContext context) => const BookingView());
      case RoutesName.profile:
        return MaterialPageRoute(
            builder: (BuildContext context) => const ProfileView());
      // case RoutesName.busDetail:
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => const BusDetailView());
      // case RoutesName.seatSelection:
      //   return MaterialPageRoute(
      //       builder: (BuildContext context) => const SelectSeatView());
      case RoutesName.bookingDetailview:
        return MaterialPageRoute(
            builder: (BuildContext context) => BookingDetailView());
      case RoutesName.referral:
        return MaterialPageRoute(
            builder: (BuildContext context) => const ReferralView());
      case RoutesName.paymentMethod:
        return MaterialPageRoute(
            builder: (BuildContext context) => const PaymentMethod());

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
