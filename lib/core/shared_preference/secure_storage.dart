import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../models/profile_response.dart';

class SecureStorage {
  final FlutterSecureStorage _storage;

  SecureStorage(this._storage);

  /// token
  ///
  Future<String?> getToken() async {
    return _storage.read(key: 'token');
  }

  Future<void> setToken(String? token) async {
    await _storage.write(key: 'token', value: token);
  }

  Future<void> deleteToken() async {
    await _storage.delete(key: 'token');
  }

  /// user data
  ///
  Future<UserBaseInfo?> getUserData() async {
    var userData = await _storage.read(key: 'user_data');
    if (userData == null) {
      return null;
    } else {
      Map userMap = jsonDecode(userData);
      return UserBaseInfo.fromJson(userMap);
    }
  }

  Future<void> setUserData(UserBaseInfo? userData) async {
    if (userData == null) return;
    var user = jsonEncode(userData);
    await _storage.write(key: 'user_data', value: user);
  }

  Future<void> deleteUserData() async {
    await _storage.delete(key: 'user_data');
  }

  Future<void> logout() async {
    await deleteToken();
    await deleteUserData();
  }
}
