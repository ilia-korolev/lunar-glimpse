enum ContentLanguage {
  english,
  japanese,
  russian,
  chinese;

  static ContentLanguage fromLanguageCode(String languageCode) =>
      switch (languageCode) {
        'en' => ContentLanguage.english,
        'ja' => ContentLanguage.japanese,
        'ru' => ContentLanguage.russian,
        'zh' => ContentLanguage.chinese,
        _ => throw UnsupportedError(
            'The language code is not supported: $languageCode',
          ),
      };

  String get languageCode => switch (this) {
        ContentLanguage.english => 'en',
        ContentLanguage.japanese => 'ja',
        ContentLanguage.russian => 'ru',
        ContentLanguage.chinese => 'zh',
      };
}
