import 'package:astro_common/astro_common.dart';

abstract interface class RemoteGalleryTranslationDataSource {
  const RemoteGalleryTranslationDataSource();

  Future<GalleryItem> translateItem({
    required GalleryItem item,
    required ContentLanguage sourceLanguage,
    required ContentLanguage targetLanguage,
  });

  Future<List<GalleryItem>> translateItems({
    required List<GalleryItem> items,
    required ContentLanguage sourceLanguage,
    required ContentLanguage targetLanguage,
  });
}

class RemoteGalleryTranslationDataSourceImpl
    implements RemoteGalleryTranslationDataSource {
  const RemoteGalleryTranslationDataSourceImpl({
    required RemoteTranslationDataSource remoteTranslationDataSource,
  }) : _remoteTranslationDataSource = remoteTranslationDataSource;

  final RemoteTranslationDataSource _remoteTranslationDataSource;

  @override
  Future<GalleryItem> translateItem({
    required GalleryItem item,
    required ContentLanguage sourceLanguage,
    required ContentLanguage targetLanguage,
  }) async {
    final textsToTranslate = [
      item.info.title,
      item.info.explanation,
    ];

    final translatedText = await _remoteTranslationDataSource.translateText(
      source: textsToTranslate,
      sourceLanguage: sourceLanguage.languageCode,
      targetLanguage: targetLanguage.languageCode,
    );

    return item.copyWith(
      info: GalleryInfo(
        language: targetLanguage,
        originalLanguage: sourceLanguage,
        title: translatedText[0],
        explanation: translatedText[1],
      ),
    );
  }

  @override
  Future<List<GalleryItem>> translateItems({
    required List<GalleryItem> items,
    required ContentLanguage sourceLanguage,
    required ContentLanguage targetLanguage,
  }) async {
    final translatedItems = <GalleryItem>[];

    for (final item in items) {
      translatedItems.add(
        await translateItem(
          item: item,
          sourceLanguage: sourceLanguage,
          targetLanguage: targetLanguage,
        ),
      );
    }

    return translatedItems;
  }
}
