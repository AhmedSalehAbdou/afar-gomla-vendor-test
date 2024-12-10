import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/shared_preference/app_prefs.dart';
import 'LoginState.dart';

class LoginCubit extends Cubit<LoginState> {
  // SplashRepository splashRepository;
  AppPreferences appPreferences;

  LoginCubit({
    // required this.splashRepository,
    required this.appPreferences,
  }) : super(LoginInitial());

  var mobileTextError = false;

  static LoginCubit get(context) => BlocProvider.of(context);
}
