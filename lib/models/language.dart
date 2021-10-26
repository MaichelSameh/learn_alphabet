class LanguageInfo {
  late String _countryCode;
  late String _flag;
  late String _languageCode;
  late String _title;
  late String _route;

  LanguageInfo({
    required String countryCode,
    required String languageCode,
    required String title,
    required String flag,
    required String route,
  }) {
    _countryCode = countryCode;
    _flag = flag;
    _languageCode = languageCode;
    _title = title;
    _route = route;
  }

  String get countryCode => _countryCode;
  String get flag => _flag;
  String get languageCode => _languageCode;
  String get title => _title;
  String get route => _route;

  @override
  String toString() {
    return '''
    country_code: $countryCode,
    flag: $flag,
    title: $title,
    language_code: $languageCode,
    route: $route
  ''';
  }
}
