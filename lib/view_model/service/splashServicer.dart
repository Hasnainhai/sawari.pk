import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../model/user_model.dart';
import '../../utils/routes/routes_name.dart';
import '../user_view_model.dart';

class SplashServices {
  Future<UserModel> getUserData() => UserViewModel().getUser();

  void checkAuthenTication(BuildContext context) {
    getUserData().then((value) {
      final extractedToken = value.token.replaceAll('{key: ', '').replaceAll('}', '');
      if (extractedToken.isEmpty || extractedToken == '') {
        Future.delayed(const Duration(seconds: 3));
        Navigator.pushNamed(context, RoutesName.onBoarding2);
      } else {
        print(extractedToken);
        Future.delayed(const Duration(seconds: 5));
        Navigator.pushNamed(context, RoutesName.dashboard);
      }
    }).onError((error, stackTrace) {
      if (kDebugMode) {
        print(error.toString());
      }
    });
  }
}
