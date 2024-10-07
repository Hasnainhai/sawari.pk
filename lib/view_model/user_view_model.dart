import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../model/user_model.dart';

class UserViewModel with ChangeNotifier {
  Future<bool> saveUser(UserModel user) async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString('key', user.token ?? '');
    notifyListeners();
    return true;
  }

  Future<UserModel> getUser() async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    String? key = sp.getString('key');

    return UserModel(token: key ?? '');
  }

  Future<bool> removerUser() async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    return sp.remove('key');
  }
}
