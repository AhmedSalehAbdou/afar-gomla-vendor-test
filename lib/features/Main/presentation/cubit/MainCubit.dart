import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/shared_preference/app_prefs.dart';
import 'MainState.dart';

class MainCubit extends Cubit<MainState> {
  // SplashRepository splashRepository;
  AppPreferences appPreferences;

  MainCubit({
    // required this.splashRepository,
    required this.appPreferences,
  }) : super(MainInitial());

  var mobileTextError = false;

  static MainCubit get(context) => BlocProvider.of(context);
}
