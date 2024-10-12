import 'dart:typed_data';

import 'package:astro_common/astro_common.dart';
import 'package:image/image.dart';

abstract interface class RemoteGalleryMapperDataSource {
  const RemoteGalleryMapperDataSource();

  Future<GalleryItem> map({
    required BasicGalleryItem basic,
    required ContentLanguage language,
  });
}

class RemoteGalleryMapperDataSourceImpl
    implements RemoteGalleryMapperDataSource {
  const RemoteGalleryMapperDataSourceImpl({
    required RemoteDownloadFileDataSource remoteDownloadFileDataSource,
    required RemoteImageDataSource remoteImageDataSource,
    required BlurHashGenerator blurHashGenerator,
  })  : _remoteDownloadFileDataSource = remoteDownloadFileDataSource,
        _remoteImageDataSource = remoteImageDataSource,
        _blurHashGenerator = blurHashGenerator;

  final RemoteDownloadFileDataSource _remoteDownloadFileDataSource;
  final RemoteImageDataSource _remoteImageDataSource;
  final BlurHashGenerator _blurHashGenerator;

  @override
  Future<GalleryItem> map({
    required BasicGalleryItem basic,
    required ContentLanguage language,
  }) async {
    return switch (basic.type) {
      GalleryItemType.image => _mapImage(basic: basic, language: language),
      GalleryItemType.video => _mapVideo(basic: basic, language: language),
      GalleryItemType.other => _mapOther(basic: basic, language: language),
      GalleryItemType.empty => _mapEmpty(basic: basic, language: language),
    };
  }

  Future<GalleryItem> _mapImage({
    required BasicGalleryItem basic,
    required ContentLanguage language,
  }) async {
    final uploadResult = await _remoteImageDataSource.upload(
      fileUri: basic.uri,
      name: basic.date.format('yyyy-MM-dd'),
    );

    final imageBytes = await _downloadFile(uploadResult.uri);
    final thumbBytes = await _downloadFile(uploadResult.thumbUri);

    final image = decodeImage(imageBytes)!;
    final thumbImage = decodeImage(thumbBytes)!;

    final aspectRatio = _calculateAspectRatio(image);
    final thumbAspectRatio = _calculateAspectRatio(thumbImage);

    final blurHash = await _generateBlurHash(image, aspectRatio);
    final blurHashThumb = await _generateBlurHash(thumbImage, thumbAspectRatio);

    return GalleryItem(
      date: basic.date,
      copyright: basic.copyright,
      isFavorite: false,
      media: GalleryImage(
        uri: uploadResult.uri,
        hdUri: basic.hdUri,
        thumbUri: uploadResult.thumbUri,
        aspectRatio: aspectRatio,
        aspectRatioThumb: thumbAspectRatio,
        blurHash: blurHash,
        blurHashThumb: blurHashThumb,
      ),
      info: GalleryInfo(
        language: language,
        originalLanguage: language,
        title: basic.title,
        explanation: basic.explanation,
      ),
    );
  }

  Future<Uint8List> _downloadFile(Uri fileUri) async {
    return _remoteDownloadFileDataSource.downloadFile(fileUri: fileUri).bytes;
  }

  double _calculateAspectRatio(Image image) {
    final aspectRatio = image.width / image.height;
    final rounded = double.parse(aspectRatio.toStringAsFixed(2));

    return rounded;
  }

  Future<String> _generateBlurHash(Image image, double aspectRatio) async {
    final compX = aspectRatio >= 5 / 4 ? 4 : 3;
    final compY = aspectRatio <= 4 / 5 ? 4 : 3;

    return _blurHashGenerator.encode(
      image: image,
      numCompX: compX,
      numCompY: compY,
    );
  }

  Future<GalleryItem> _mapVideo({
    required BasicGalleryItem basic,
    required ContentLanguage language,
  }) async {
    return GalleryItem(
      date: basic.date,
      copyright: basic.copyright,
      isFavorite: false,
      media: GalleryVideo(
        uri: basic.uri,
      ),
      info: GalleryInfo(
        language: language,
        originalLanguage: language,
        title: basic.title,
        explanation: basic.explanation,
      ),
    );
  }

  Future<GalleryItem> _mapOther({
    required BasicGalleryItem basic,
    required ContentLanguage language,
  }) async {
    return GalleryItem(
      date: basic.date,
      copyright: basic.copyright,
      isFavorite: false,
      media: GalleryOther(
        uri: basic.uri,
      ),
      info: GalleryInfo(
        language: language,
        originalLanguage: language,
        title: basic.title,
        explanation: basic.explanation,
      ),
    );
  }

  Future<GalleryItem> _mapEmpty({
    required BasicGalleryItem basic,
    required ContentLanguage language,
  }) async {
    return GalleryItem(
      date: basic.date,
      copyright: basic.copyright,
      isFavorite: false,
      media: const GalleryEmpty(),
      info: GalleryInfo(
        language: language,
        originalLanguage: language,
        title: basic.title,
        explanation: basic.explanation,
      ),
    );
  }
}
