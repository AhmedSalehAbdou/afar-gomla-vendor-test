import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';


const String appLangKey = "PREFS_KEY_LANG";
const String mobileTextKey = "MOBILE_TEXT_KEY";
const String userLatitudeKey = "USER_LATITUDE_KEY";
const String userLongitudeKey = "USER_LONGITUDE_KEY";
const String userAddressKey = "USER_ADDRESS_KEY";
const String vatKey = "VAT_KEY";

class AppPreferences {
  final SharedPreferences sharedPreferences;

  AppPreferences(this.sharedPreferences);

  Future setLocale(String languageCode) async {
    await sharedPreferences.setString(appLangKey, languageCode);
  }

  String getLocale() {
    return sharedPreferences.getString(appLangKey) ?? "ar";
  }

  void setUserLatitude(double latitude) async {
    await sharedPreferences.setDouble(userLatitudeKey, latitude);
  }

  double? getUserLatitude() {
    return sharedPreferences.getDouble(userLatitudeKey);
  }

  void setUserLongitude(double longitude) async {
    await sharedPreferences.setDouble(userLongitudeKey, longitude);
  }

  double? getUserLongitude() {
    return sharedPreferences.getDouble(userLongitudeKey);
  }

  void setAddress(String address) async {
    await sharedPreferences.setString(userAddressKey, address);
  }

  String? getAddress() {
    return sharedPreferences.getString(userAddressKey);
  }

  void setVat(double vat) async {
    await sharedPreferences.setDouble(vatKey, vat);
  }

  double getVat() {
    return sharedPreferences.getDouble(vatKey) ?? 0;
  }

  void logout() async {
    await sharedPreferences.remove(userLatitudeKey);
    await sharedPreferences.remove(userLongitudeKey);
    await sharedPreferences.remove(userAddressKey);
  }
}
