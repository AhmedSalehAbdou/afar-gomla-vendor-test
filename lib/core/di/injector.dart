
import 'package:awfar_gomla_vendor/features/login/di/login_injector.dart';
import 'package:awfar_gomla_vendor/features/select_language/di/select_language_injector.dart';
import 'package:get_it/get_it.dart';

import '../../features/splash/di/splash_injector.dart';
import '../shared_preference/shared_preference_injector.dart';

final injector = GetIt.instance;

Future<void> initInjection() async {
  await sharedPreferencesInjector();
  // await firebaseInjector();
  // await blocObserverInjector();
  // await dioInjector();
  await splashInjector();
  await select_language_injector();
  await login_injector();
  // await mainInjector();
  // await homeInjector();
  // await moreInjector();
  // await commonInjector();
  // await editProfileInjector();
  // await notificationsInjector();
  // await withdrawInjector();
  // await addressesInjector();
  // await categoriesInjector();
  // await favouritesInjector();
  // await productsInjector();
  // await authInjector();
  // await cartInjector();
  // await checkoutInjector();
  // await companiesInjector();
  // await ordersInjector();
  // await walletInjector();
}
