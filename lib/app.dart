import 'package:awfar_gomla_vendor/features/splash/presentation/cubit/splash_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:month_year_picker/month_year_picker.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'core/app_routes.dart';
import 'core/assets_utils/app_theme.dart';
import 'core/di/injector.dart';
import 'core/utils/app_locale.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark),
    );
    return RootRestorationScope(
      restorationId: "root",
      child: ChangeNotifierProvider(
        create: (context) => injector<AppLocale>(),
        builder: (context, child) {
          final provider = Provider.of<AppLocale>(context);

          return ScreenUtilInit(
            child: MaterialApp.router(
              theme: appTheme(),
              darkTheme: appTheme(),
              locale: provider.locale,
              debugShowCheckedModeBanner: false,
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                MonthYearPickerLocalizations.delegate,
              ],
              supportedLocales: AppLocalizations.supportedLocales,
              routerConfig: AppRoutes.router,
            ),
          );
          // return ScreenUtilInit(
          //   child: MultiBlocListener(
          //     listeners: [
          //       BlocProvider(create: (context) => injector<SplashCubit>()),
          //     ],
          //     child: MaterialApp.router(
          //       theme: appTheme(),
          //       darkTheme: appTheme(),
          //       locale: provider.locale,
          //       debugShowCheckedModeBanner: false,
          //       localizationsDelegates: const [
          //         AppLocalizations.delegate,
          //         GlobalMaterialLocalizations.delegate,
          //         GlobalWidgetsLocalizations.delegate,
          //         GlobalCupertinoLocalizations.delegate,
          //         MonthYearPickerLocalizations.delegate,
          //       ],
          //       supportedLocales: AppLocalizations.supportedLocales,
          //       routerConfig: AppRoutes.router,
          //     ),
          //   ),
          // );
        },
      ),
    );
  }
}
