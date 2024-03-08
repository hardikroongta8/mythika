import 'dart:convert';

import 'package:mythika/models/user_info.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static Future<bool> isLoggedIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.containsKey('userInfo');
  }

  static Future<bool> storeUserInfo(UserInfo info) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setString('userInfo', jsonEncode(info.toJson()));
  }

  static Future<UserInfo> getUserInfo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return UserInfo.fromJson(jsonDecode(prefs.getString('userInfo') ?? "{}"));
  }

  static Future<bool> logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.clear();
  }
}
