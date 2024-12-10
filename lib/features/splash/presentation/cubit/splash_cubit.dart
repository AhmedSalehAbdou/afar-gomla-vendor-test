import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/shared_preference/app_prefs.dart';
import 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  // SplashRepository splashRepository;
  AppPreferences appPreferences;

  SplashCubit({
    // required this.splashRepository,
    required this.appPreferences,
  }) : super(SplashInitial());

  var mobileTextError = false;

  static SplashCubit get(context) => BlocProvider.of(context);
}
