import 'package:awfar_gomla_vendor/core/assets_utils/app_colors.dart';
import 'package:awfar_gomla_vendor/core/assets_utils/app_dimens.dart';
import 'package:awfar_gomla_vendor/features/splash/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hive/hive.dart';
import '../../../../core/app_routes.dart';
import '../../../../core/assets_utils/assets_manager.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with TickerProviderStateMixin {

  final FocusNode _focusNodePassword = FocusNode();
  final TextEditingController _controllerUserPhone = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  bool _obscurePassword = true;
  final Box _boxLogin = Hive.box("login");
  final Box _boxAccounts = Hive.box("accounts");

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // getAppLanguages();
    if (_boxLogin.get("loginStatus") ?? false) {
      return SplashScreen();
    }
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
            40.verticalSpace,
            Row(
                children: [
                  GestureDetector(
                    child:Icon(Icons.arrow_back ) ,
                    onTap: (){ context.go(Routes.selectLang); },
                  )

                ]
            ),

            100.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppLocalizations.of(context)!.welcome_back,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppDimens.largeFontSize,
                    color: Colors.black,
                  ),
                  // style: Theme.of(context).textTheme.headlineLarge,
                ),
                10.horizontalSpace,
                SvgPicture.asset(ImgAssets.login_welcome),
              ]

            ),

            10.verticalSpace,
            Text(
              AppLocalizations.of(context)!.log_in,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: AppDimens.mediumFontSize,
              ),
            ),
            30.verticalSpace,
            TextFormField(
              controller: _controllerUserPhone,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: AppLocalizations.of(context)!.enter_phone_number,
                suffixIcon: const Icon(Icons.phone),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onEditingComplete: () => _focusNodePassword.requestFocus(),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return "Please enter username.";
                } else if (!_boxAccounts.containsKey(value)) {
                  return "Username is not registered.";
                }

                return null;
              },
            ),
            30.verticalSpace,

            TextFormField(
              controller: _controllerPassword,
              focusNode: _focusNodePassword,
              obscureText: _obscurePassword,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                labelText: AppLocalizations.of(context)!.enter_password,
                // prefixIcon: const Icon(Icons.password_outlined),
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                    icon: _obscurePassword
                        ? const Icon(Icons.visibility_outlined)
                        : const Icon(Icons.visibility_off_outlined)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),

                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return "Please enter password.";
                } else if (value !=
                    _boxAccounts.get(_controllerUserPhone.text)) {
                  return "Wrong password.";
                }

                return null;
              },
            ),
            20.verticalSpace,
            Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    AppLocalizations.of(context)!.did_you_forget_password,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: AppDimens.smallFontSize,
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                    ),
                    // style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  10.horizontalSpace,
                ]

            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.secondary,
                    minimumSize: const Size(double.infinity, 48),
                    // width, height
                  ),
                  onPressed: () => { context.go(Routes.mainRoute)},
                  child: Text(
                    AppLocalizations.of(context)!.login,
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

}
