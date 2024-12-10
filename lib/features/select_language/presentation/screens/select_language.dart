import 'package:awfar_gomla_vendor/core/assets_utils/app_colors.dart';
import 'package:awfar_gomla_vendor/core/assets_utils/app_dimens.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/app_routes.dart';
import '../../../../core/assets_utils/assets_manager.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../core/di/injector.dart';
import '../../../../core/shared_preference/app_prefs.dart';
import '../../../../core/utils/app_language.dart';
import '../../../../core/utils/app_locale.dart';
import '../../../../core/utils/localization_strings.dart';

class SelectLangScreen extends StatefulWidget {
  const SelectLangScreen({super.key});

  @override
  State<SelectLangScreen> createState() => _SelectLangScreenState();
}

class _SelectLangScreenState extends State<SelectLangScreen>
    with TickerProviderStateMixin {
  final appLocale = injector<AppLocale>();
  List<AppLanguage> languages = [];
  AppLanguage? selectLanguage;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // getAppLanguages();

    return SafeArea(
      top: false,
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ImgAssets.intro_bg),
              fit: BoxFit.cover,
            ),
          ),
          padding: AppDimens.marginMain,
          height: double.infinity,
          width: double.infinity,
          child: Column(children: [
            150.verticalSpace,
            Text(
              AppLocalizations.of(context)!.welcome_to_app,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 33,
                color: Colors.black,
              ),
              // style: Theme.of(context).textTheme.headlineLarge,
            ),
            30.verticalSpace,
            Text(
              AppLocalizations.of(context)!.you_must_select_lang_first,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: AppDimens.mediumFontSize,
              ),
            ),
            30.verticalSpace,
            Row(
              children: [
                5.horizontalSpace,
                Text(
                  AppLocalizations.of(context)!.language,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                      fontSize: AppDimens.mediumFontSize,
                      color: AppColors.black),
                ),
              ],
            ),
            5.verticalSpace,
            GestureDetector(
              onTap: () {
                showBottomSheetDialog();
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: AppColors.gray, width: .5.w),
                  borderRadius: BorderRadius.circular(8.w),
                ),
                margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 4.h),
                padding: const EdgeInsets.all(12),
                child: InkWell(
                  // onTap: () => onTap?.call(),
                  child: Row(
                    children: [
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Row(
                              children: [
                                SvgPicture.asset(
                                  appLocale.locale.languageCode == "ar"
                                      ? ImgAssets.sa_flag
                                      : ImgAssets.en_flag,
                                ),
                                12.horizontalSpace,
                                Text(
                                  appLocale.locale.languageCode == "ar"
                                      ? AppLocalizations.of(context)!.arabic
                                      : AppLocalizations.of(context)!.english,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      fontSize: AppDimens.mediumFontSize,
                                      color: AppColors.normal_text_color),
                                  // style: Theme.of(context).textTheme.headlineLarge,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      15.horizontalSpace,
                      SvgPicture.asset(ImgAssets.drop_down),
                    ],
                  ),
                ),
              ),
            ),
            20.verticalSpace,
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.secondary,
                    minimumSize: const Size(double.infinity, 48),
                    // width, height
                  ),
                  onPressed: () => { context.go(Routes.login)},
                  child: Text(
                    AppLocalizations.of(context)!.next,
                    style: const TextStyle(
                        color: AppColors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Future<void> showBottomSheetDialog() {
    return showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          width: double.infinity,
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
          decoration: BoxDecoration(
            color: AppColors.primary,
            // border: Border.all(color: AppColors.gray, width: .5.w),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.w),
                topRight: Radius.circular(40.w)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text(
                AppLocalizations.of(context)!.select_lang,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              20.verticalSpace,
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.secondary,
                  minimumSize: const Size(double.infinity, 48),
                  // width, height
                ),
                onPressed: () =>
                    {Navigator.pop(context), appLocale.changeLocale("ar")},
                child: Text(
                  AppLocalizations.of(context)!.arabic,
                  style: const TextStyle(
                      color: AppColors.white, fontWeight: FontWeight.bold),
                ),
              ),
              10.verticalSpace,
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.white,
                  minimumSize: const Size(double.infinity, 48),
                  // width, height
                ),
                // onPressed: () => Navigator.pop(context),
                onPressed: () =>
                    {Navigator.pop(context), appLocale.changeLocale("en")},
                child: Text(
                  AppLocalizations.of(context)!.english,
                  style: const TextStyle(
                      color: AppColors.secondary, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
