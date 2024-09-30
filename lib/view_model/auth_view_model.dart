import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sawari_pk/view_model/user_view_model.dart';
import '../model/user_model.dart';
import '../repository/auth_repository.dart';
import '../utils/routes/routes_name.dart';
import '../utils/routes/utils.dart';

class AuthViewModel with ChangeNotifier {
  final _myRepo = AuthRepository();
  bool _isLoading = false;
  bool get isloading => _isLoading;
  void setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  bool _signupLoading = false;
  bool get signupLoading => _signupLoading;

  void setSignUpLaoding(bool value) {
    _signupLoading = value;
    notifyListeners();
  }

  Future<void> loginApi(dynamic data, BuildContext context) async {
    setLoading(true);
    _myRepo.loginApi(data).then((value) {
      if (kDebugMode) {
        print('...........................data $data .....................');
      }
      setLoading(false);
      final userPrefrences = Provider.of<UserViewModel>(context, listen: false);
      userPrefrences.saveUser(
        UserModel(token: value['token'].toString()),
      );
      print('Token saved: ${value['token']}');
      if (kDebugMode) {
        print('..............${value['token']}.................');
      }
      Utils.flushBarErrorMessage(
          '${value.toString()} ${value['token']}', context);
      if (kDebugMode) {
        print('................token: ${value.toString()}');
      }
      if (kDebugMode) {
        print(value.toString());
      }
      Navigator.pushNamedAndRemoveUntil(
          context, RoutesName.dashboard, (route) => false);
      Utils.toastMessage('SuccessFully LogIn Token: ${value.toString()},');
    }).onError((error, stackTrace) {
      Utils.flushBarErrorMessage(error.toString(), context);
      setLoading(false);
      if (kDebugMode) {
        print(error.toString());
      }
    });
  }

  Future<void> signUpApi(dynamic data, BuildContext context) async {
    setSignUpLaoding(true);
    _myRepo.signUpApi(data).then((value) {
      setSignUpLaoding(false);
      Utils.flushBarErrorMessage(value.toString(), context);
      Navigator.pushNamed(
        context,
        RoutesName.login,
      );
      Utils.toastMessage('SuccessFully Signup please login');

      if (kDebugMode) {
        print(value.toString());
      }
    }).onError((error, stackTrace) {
      Utils.flushBarErrorMessage(error.toString(), context);
      setSignUpLaoding(false);
      if (kDebugMode) {
        print(error.toString());
      }
    });
  }
}
