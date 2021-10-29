class LanguageInfo {
  late String _countryCode;
  late String _flag;
  late String _languageCode;
  late String _title;

  LanguageInfo({
    required String countryCode,
    required String languageCode,
    required String title,
    required String flag,
  }) {
    _countryCode = countryCode;
    _flag = flag;
    _languageCode = languageCode;
    _title = title;
  }

  String get countryCode => _countryCode;
  String get flag => _flag;
  String get languageCode => _languageCode;
  String get title => _title;

  @override
  String toString() {
    return '''
    country_code: $countryCode,
    flag: $flag,
    title: $title,
    language_code: $languageCode,
  ''';
  }
}
