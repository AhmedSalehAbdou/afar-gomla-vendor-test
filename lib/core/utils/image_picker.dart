// import 'dart:io';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:image_picker/image_picker.dart';
//
// import '../common_widgets/custom_text.dart';
//
// class AttachmentPicker {
//   static void pickImage(
//       ImageSource source, Function(File) imageDidSelected) async {
//     try {
//       final image = await ImagePicker().pickImage(
//         source: source,
//       );
//       if (image == null) return;
//       final imageTemp = File(image.path);
//       imageDidSelected.call(imageTemp);
//     } on PlatformException catch (e) {
//       debugPrint('Failed to  pick image: $e');
//     }
//   }
//
//   static Future<ImageSource?> showImageSource(BuildContext context) async {
//     if (Platform.isIOS) {
//       return showCupertinoModalPopup<ImageSource>(
//         context: context,
//         builder: (context) => CupertinoActionSheet(
//           actions: [
//             CupertinoActionSheetAction(
//                 onPressed: () => Navigator.of(context).pop(ImageSource.camera),
//                 child: const CustomText(text: "")),
//             CupertinoActionSheetAction(
//                 onPressed: () => Navigator.of(context).pop(ImageSource.gallery),
//                 child: const CustomText(text: "")),
//           ],
//         ),
//       );
//     } else {
//       return showModalBottomSheet<ImageSource>(
//         context: context,
//         builder: (context) => CupertinoActionSheet(
//           actions: [
//             CupertinoActionSheetAction(
//               onPressed: () => Navigator.of(context).pop(ImageSource.camera),
//               child: const CustomText(text: ""),
//             ),
//             CupertinoActionSheetAction(
//               onPressed: () => Navigator.of(context).pop(ImageSource.gallery),
//               child: const CustomText(text: ""),
//             ),
//           ],
//         ),
//       );
//     }
//   }
// }
