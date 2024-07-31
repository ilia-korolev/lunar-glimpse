import 'package:cloudinary/cloudinary.dart';

class CloudinaryException implements Exception {
  const CloudinaryException({required this.message});

  final String message;
}

abstract interface class RemoteImageDataSource {
  const RemoteImageDataSource();

  Future<Uri> upload({
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
  static const _template = 't_thumb';

  @override
  Future<Uri> upload({
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

    return Uri.parse(
      'https://res.cloudinary.com/${cloudinary.cloudName}/image/$_deliveryType/$_template/$name.$_format',
    );
  }
}

class MockImageDataSource implements RemoteImageDataSource {
  const MockImageDataSource();

  @override
  Future<Uri> upload({
    required Uri fileUri,
    required String name,
  }) async {
    return fileUri;
  }
}
