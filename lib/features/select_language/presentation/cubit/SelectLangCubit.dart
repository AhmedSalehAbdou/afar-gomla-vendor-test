import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/shared_preference/app_prefs.dart';
import 'SelectLangState.dart';

class SelectLangCubit extends Cubit<SelectLangState> {
  // SplashRepository splashRepository;
  AppPreferences appPreferences;

  SelectLangCubit({
    // required this.splashRepository,
    required this.appPreferences,
  }) : super(SplashInitial());

  var mobileTextError = false;

  static SelectLangCubit get(context) => BlocProvider.of(context);
}
