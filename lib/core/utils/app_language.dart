class AppLanguage {
  final String _languageName;
  final String _languageCode;

  AppLanguage({
    required String languageName,
    required String languageCode,
  })  : _languageCode = languageCode,
        _languageName = languageName;

  String get languageCode => _languageCode;

  String get languageName => _languageName;
}
