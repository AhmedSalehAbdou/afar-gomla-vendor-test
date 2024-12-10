import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/app_routes.dart';
import '../../../../core/assets_utils/assets_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  // final appPreferences = injector<AppPreferences>();
  // final secureStorage = injector<SecureStorage>();

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () => navigateNextScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(80),
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: Center(
              child: Image.asset(
                  ImgAssets.splash_logo
              ),

          ),
        ),
      ),
    );

  }

  void navigateNextScreen() {
    print("a7aaaa");
    context.go(Routes.selectLang);
    // secureStorage.getToken().then((token) {
    //   if (token?.isNotEmpty == true) {
    //     context.go(Routes.mainRoute);
    //   } else {
    //     context.go(Routes.onboardingRoute);
    //   }
    // });
  }
}
