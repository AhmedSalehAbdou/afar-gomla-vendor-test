import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/shared_preference/app_prefs.dart';
import 'HomeState.dart';

class HomeCubit extends Cubit<HomeState> {
  // SplashRepository splashRepository;
  AppPreferences appPreferences;

  HomeCubit({
    // required this.splashRepository,
    required this.appPreferences,
  }) : super(HomeInitial());

  var mobileTextError = false;

  static HomeCubit get(context) => BlocProvider.of(context);
}
