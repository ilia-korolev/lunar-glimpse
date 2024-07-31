import 'package:blurhash_dart/blurhash_dart.dart';
import 'package:image/image.dart';

abstract interface class BlurHashGenerator {
  const BlurHashGenerator();

  Future<String> encode({
    required Image image,
    required int numCompX,
    required int numCompY,
  });
}

class BlurHashGeneratorImpl implements BlurHashGenerator {
  const BlurHashGeneratorImpl();

  @override
  Future<String> encode({
    required Image image,
    required int numCompX,
    required int numCompY,
  }) async {
    final blurHashString = BlurHash.encode(
      image,
      numCompX: numCompX,
      numCompY: numCompY,
    );

    return blurHashString.hash;
  }
}
