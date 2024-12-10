import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import 'app.dart';
import 'core/di/injector.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initInjection();
  await initFirebase();
  await loadFont();
  await initCrashlytics();
  await _initHive();
  // Bloc.observer = injector<AppBlocObserver>();
  runApp(const MyApp());
}

Future<void> loadFont() async {
  final font = FontLoader('bahij')..addFont(loadFontData());
  await font.load();
}

Future<ByteData> loadFontData() async {
  final fontData = await rootBundle.load('assets/fonts/cairo_regular.ttf');
  return fontData;
}

Future<void> initFirebase() async {
  // await Firebase.initializeApp();
  // await initFcm();
}

Future<void> initCrashlytics() async {
  // await FirebaseCrashlytics.instance
  //     .setCrashlyticsCollectionEnabled(!kDebugMode);
  // PlatformDispatcher.instance.onError = (error, stack) {
  //   FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
  //   return true;
  // };
}

Future<void> initFcm() async {
  debugPrint("FCM initFcm()");
  // await FirebaseMessaging.instance.requestPermission(
  //   alert: true,
  //   badge: true,
  //   sound: true,
  // );

  // FirebaseMessaging.onMessage.listen((RemoteMessage message) {
  //   debugPrint("FCM onMessage notification ${message.notification?.title}");
  //   debugPrint("FCM onMessage date ${message.data.toString()}");
  //
  //   _showLocalNotification(message);
  //   changeNotificationsCount();
  // });
  //
  // FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
}

// @pragma('vm:entry-point')
// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   await Firebase.initializeApp();
//   // _showLocalNotification(message);
// }

// void _showLocalNotification(RemoteMessage message) async {
//   var initializationSettingsAndroid =
//   const AndroidInitializationSettings('@mipmap/launcher_icon');
//
//   var initializationSettingsIOS = const DarwinInitializationSettings();
//
//   var initializationSettings = InitializationSettings(
//     android: initializationSettingsAndroid,
//     iOS: initializationSettingsIOS,
//   );
//
//   await FlutterLocalNotificationsPlugin().initialize(initializationSettings);
//
//   await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
//     alert: true,
//     badge: true,
//     sound: true,
//   );
//
//   const androidPlatformChannelSpecifics = AndroidNotificationDetails(
//     'coffee_channel',
//     'coffee High Importance Notifications',
//     enableVibration: true,
//     importance: Importance.high,
//     priority: Priority.high,
//   );
//
//   const NotificationDetails platformChannelSpecifics = NotificationDetails(
//     android: androidPlatformChannelSpecifics,
//     iOS: DarwinNotificationDetails(),
//   );
//
//   debugPrint("FCM _showLocalNotification notification ${message.notification?.title}");
//   debugPrint("FCM _showLocalNotification date ${message.data.toString()}");
//
//   await FlutterLocalNotificationsPlugin().show(
//     Random().nextInt(1000000),
//     message.notification?.title,
//     message.notification?.body,
//     platformChannelSpecifics,
//   );
// }

Future<void> _initHive() async{
  await Hive.initFlutter();
  await Hive.openBox("login");
  await Hive.openBox("accounts");
}
void changeNotificationsCount() {
  // var mainCubit = injector<MainCubit>();
  // mainCubit.notificationsCount++;
}
