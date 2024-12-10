// import 'package:coffee/core/assets_utils/app_colors.dart';
// import 'package:coffee/core/common_widgets/custom_text.dart';
// import 'package:coffee/core/shared_preference/secure_storage.dart';
// import 'package:coffee/features/auth/presentation/screens/auth_screen.dart';
// import 'package:flash/flash.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import '../common_widgets/loading_dialog.dart';
//
// enum MessageType { messageFailed, messageSuccess }
//
// class MessagesUtils {
//   static void showMessage({
//     required BuildContext context,
//     required String? text,
//     bool persistent = true,
//     FlashPosition position = FlashPosition.top,
//     Color? color,
//     MessageType? messageType,
//   }) {
//     showFlash(
//       context: context,
//       persistent: persistent,
//       barrierDismissible: true,
//       duration: const Duration(seconds: 1, milliseconds: 500),
//       builder: (_, controller) {
//         return Flash(
//           controller: controller,
//
//           forwardAnimationCurve: Curves.ease,
//           reverseAnimationCurve: Curves.bounceIn,
//           position: position,
//           child: DefaultTextStyle(
//             style: const TextStyle(color: AppColors.white),
//             child: FlashBar(
//               controller: controller,
//               position: position,
//               backgroundColor: messageType == MessageType.messageFailed
//                   ? AppColors.red
//                   : AppColors.primary,
//               icon: const Icon(
//                 Icons.info_outline,
//                 color: Colors.white,
//               ),
//               primaryAction: TextButton(
//                 onPressed: () => controller.dismiss(),
//                 child: CustomText(
//                   text: AppLocalizations.of(context)?.lblClose,
//                   color: AppColors.white,
//                 ),
//               ),
//               content: CustomText(
//                 text: text,
//                 color: AppColors.white,
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
//
//   static void showLoadingDialog({required BuildContext context}) async {
//     showDialog(
//         context: context,
//         barrierDismissible: false,
//         builder: (_) => const LoadingDialog());
//   }
//
//   static Future<dynamic> bottomSheet({
//     required BuildContext context,
//     required Widget child,
//     required Color backgroundColor,
//     bool enableDrag = true,
//     bool isDismissible = true,
//     BoxConstraints? constraints,
//     double radius = 30,
//     bool isScrollControlled = true,
//     bool useRootNavigator = false,
//   }) async {
//     return await showModalBottomSheet(
//       context: context,
//       enableDrag: enableDrag,
//       useRootNavigator: useRootNavigator,
//       constraints: constraints,
//       isDismissible: isDismissible,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(
//           top: Radius.circular(radius.r),
//         ),
//       ),
//       isScrollControlled: isScrollControlled,
//       backgroundColor: backgroundColor,
//       builder: (_) => child,
//     );
//   }
//
//   static Future<bool> checkAuth({
//     required BuildContext context,
//     bool useRootNavigator = false,
//     Color backgroundColor = Colors.white,
//     required SecureStorage secureStorage,
//   }) async {
//     var token = await secureStorage.getToken();
//     if (token?.isNotEmpty == true) {
//       return true;
//     } else {
//       if (context.mounted) {
//         bottomSheet(
//           context: context,
//           useRootNavigator: useRootNavigator,
//           child: const AuthScreen(),
//           backgroundColor: backgroundColor,
//           enableDrag: false,
//           isDismissible: false,
//         );
//       }
//       return false;
//     }
//   }
// }
