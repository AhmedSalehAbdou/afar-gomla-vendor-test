import 'package:awfar_gomla_vendor/core/assets_utils/app_colors.dart';
import 'package:awfar_gomla_vendor/core/assets_utils/app_dimens.dart';
import 'package:awfar_gomla_vendor/features/home/presentation/screens/Home_screen.dart';
import 'package:awfar_gomla_vendor/features/login/presentation/screens/login_screen.dart';
import 'package:awfar_gomla_vendor/features/select_language/presentation/screens/select_language.dart';
import 'package:awfar_gomla_vendor/features/splash/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';
import '../../../../core/app_routes.dart';
import '../../../../core/assets_utils/app_strings.dart';
import '../../../../core/assets_utils/assets_manager.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../core/di/injector.dart';
import '../../../../core/utils/app_language.dart';
import '../../../../core/utils/app_locale.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});


  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with TickerProviderStateMixin {

  @override
  void initState() {
    super.initState();
  }

  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return SafeArea(
        top: false,
        child:
        Scaffold(
          appBar: AppBar(
            title: Title(color: Colors.orange,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: AppColors.secondary, width: .5.w),
                  borderRadius: BorderRadius.circular(8.w),
                ),
                padding: const EdgeInsets.all(7),
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
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: AppColors.gray, width: .5.w),
                                    borderRadius: BorderRadius.circular(5.w),
                                  ),
                                  width: 35.w,
                                  height: 35.w,
                                  child: SvgPicture.asset(ImgAssets.login_welcome),
                                )
                                ,
                                12.horizontalSpace,
                                Text(
                                  "${AppLocalizations.of(context)!.hello} احمد صالح ",
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
                      SvgPicture.asset(ImgAssets.notification),
                    ],
                  ),
                ),
              ),

            ),
          ),


          bottomNavigationBar: NavigationBar(
            onDestinationSelected: (int index) {
              setState(() {
                currentPageIndex = index;
              });
            },
            indicatorColor: Colors.amber,
            selectedIndex: currentPageIndex,


            destinations: <Widget>[
              NavigationDestination(
                selectedIcon: SvgPicture.asset(ImgAssets.home_icon, width: 20.w,height: 20.w, colorFilter: ColorFilter.mode(AppColors.black, BlendMode.srcIn)),
                icon: SvgPicture.asset(ImgAssets.home_icon, width: 25.w,height: 25.w),
                label: AppLocalizations.of(context)!.home,
              ),
              NavigationDestination(
                selectedIcon: SvgPicture.asset(ImgAssets.orders_icon, width: 20.w,height: 20.w, colorFilter: ColorFilter.mode(AppColors.black, BlendMode.srcIn)),
                icon: SvgPicture.asset(ImgAssets.orders_icon, width: 25.w,height: 25.w),
                label: AppLocalizations.of(context)!.orders,
              ),
              NavigationDestination(
                selectedIcon: SvgPicture.asset(ImgAssets.products_icon, width: 20.w,height: 20.w, colorFilter: ColorFilter.mode(AppColors.black, BlendMode.srcIn)),
                icon: SvgPicture.asset(ImgAssets.products_icon, width: 25.w,height: 25.w),                label: AppLocalizations.of(context)!.products,
              ),
              NavigationDestination(
                selectedIcon: SvgPicture.asset(ImgAssets.more_icon, width: 20.w,height: 20.w, colorFilter: ColorFilter.mode(AppColors.black, BlendMode.srcIn)),
                icon: SvgPicture.asset(ImgAssets.more_icon, width: 25.w,height: 25.w),                label: AppLocalizations.of(context)!.more,
              ),
            ],
          ),



          body: <Widget>[
            HomeScreen(),
            LoginScreen(),
            SelectLangScreen(),
            LoginScreen(),
          ][currentPageIndex],
        )

    );
  }

}
