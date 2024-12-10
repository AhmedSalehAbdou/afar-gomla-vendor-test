import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../di/injector.dart';
import '../utils/app_locale.dart';
import 'app_prefs.dart';
import 'secure_storage.dart';

Future<void> sharedPreferencesInjector() async {
  final sharedPrefs = await SharedPreferences.getInstance();
  injector.registerLazySingleton<SharedPreferences>(() => sharedPrefs);
  injector
      .registerLazySingleton<AppPreferences>(() => AppPreferences(injector()));
  injector.registerLazySingleton<FlutterSecureStorage>(() =>
      const FlutterSecureStorage(
          aOptions: AndroidOptions(encryptedSharedPreferences: true)));
  injector
      .registerLazySingleton<SecureStorage>(() => SecureStorage(injector()));
  injector.registerLazySingleton<AppLocale>(() => AppLocale(injector()));
}
