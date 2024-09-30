import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../model/user_model.dart';
import '../../utils/routes/routes_name.dart';
import '../user_view_model.dart';

class SplashServices {
  Future<UserModel> getUserData() => UserViewModel().getUser();

  void checkAuthenTication(BuildContext context) {
    getUserData().then((value) {
      if (value.token.isEmpty || value.token == '') {
        Future.delayed(const Duration(seconds: 10));
        Navigator.pushNamedAndRemoveUntil(
            context, RoutesName.onBoarding1, (route) => false);
      } else {
        Future.delayed(const Duration(seconds: 10));
        Navigator.pushNamedAndRemoveUntil(
            context, RoutesName.dashboard, (route) => false);
      }
    }).onError((error, stackTrace) {
      if (kDebugMode) {
        print(error.toString());
      }
    });
  }
}