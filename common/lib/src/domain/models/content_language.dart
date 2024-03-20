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

  static ContentLanguage fromString(String language) => switch (language) {
        'english' => ContentLanguage.english,
        'japanese' => ContentLanguage.japanese,
        'russian' => ContentLanguage.russian,
        'chinese' => ContentLanguage.chinese,
        _ => throw UnsupportedError(
            'The language is not supported: $language',
          ),
      };

  String get languageCode => switch (this) {
        ContentLanguage.english => 'en',
        ContentLanguage.japanese => 'ja',
        ContentLanguage.russian => 'ru',
        ContentLanguage.chinese => 'zh',
      };
}
