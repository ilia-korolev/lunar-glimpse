import 'package:flutter_astronomy/domain/_export.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'media.freezed.dart';

enum MediaType { video, image }

@freezed
class Media with _$Media {
  const factory Media({
    required Uri uri,
    required Uri hdUri,
    required Date date,
    required String title,
    required String explanation,
    required String? copyright,
    required MediaType type,
    @Default(false) bool isFavorite,
  }) = _Media;
}
