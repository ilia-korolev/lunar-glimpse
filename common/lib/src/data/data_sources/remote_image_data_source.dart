import 'package:cloudinary/cloudinary.dart';

class CloudinaryException implements Exception {
  const CloudinaryException({required this.message});

  final String message;
}

abstract interface class RemoteImageDataSource {
  const RemoteImageDataSource();

  Future<UploadResult> upload({
    required Uri fileUri,
    required String name,
  });
}

class CloudinaryImageDataSource implements RemoteImageDataSource {
  const CloudinaryImageDataSource({
    required this.cloudinary,
  });

  final Cloudinary cloudinary;

  static const _assetFolder = 'gallery';
  static const _format = 'jpg';
  static const _deliveryType = 'private';
  static const _originalTemplate = 't_original';
  static const _thumbTemplate = 't_thumb';

  @override
  Future<UploadResult> upload({
    required Uri fileUri,
    required String name,
  }) async {
    final response = await cloudinary.upload(
      file: fileUri.toString(),
      fileName: name,
      optParams: {
        'public_id': name,
        'asset_folder': _assetFolder,
        'format': _format,
        'unique_filename': false,
        'type': _deliveryType,
      },
    );

    final errorMessage = response.error;

    if (errorMessage != null) {
      throw CloudinaryException(message: errorMessage);
    }

    return UploadResult(
      uri: _composeOriginalUri(name),
      thumbUri: _composeThumbUri(name),
    );
  }

  Uri _composeOriginalUri(String name) {
    return Uri.parse(
      'https://res.cloudinary.com/${cloudinary.cloudName}/image/$_deliveryType/$_originalTemplate/$name.$_format',
    );
  }

  Uri _composeThumbUri(String name) {
    return Uri.parse(
      'https://res.cloudinary.com/${cloudinary.cloudName}/image/$_deliveryType/$_thumbTemplate/$name.$_format',
    );
  }
}

class UploadResult {
  UploadResult({
    required this.uri,
    required this.thumbUri,
  });

  final Uri uri;
  final Uri thumbUri;
}

class MockImageDataSource implements RemoteImageDataSource {
  const MockImageDataSource();

  @override
  Future<UploadResult> upload({
    required Uri fileUri,
    required String name,
  }) async {
    return UploadResult(
      uri: fileUri,
      thumbUri: fileUri,
    );
  }
}
