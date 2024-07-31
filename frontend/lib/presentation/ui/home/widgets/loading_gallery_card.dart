import 'package:astro_common/astro_common.dart';
import 'package:flutter/material.dart';
import 'package:frontend/presentation/_export.dart';

class LoadingGalleryCard extends StatelessWidget {
  const LoadingGalleryCard({
    super.key,
  });

  static final _mockItem = GalleryItem(
    date: const Date(day: 20, month: 12, year: 2000),
    isFavorite: false,
    copyright: 'This is a copyright',
    media: GalleryImage(
      uri: Uri.parse('https://www.google.com/favicon.ico'),
      hdUri: Uri.parse('https://www.google.com/favicon.ico'),
      thumbUri: Uri.parse('https://www.google.com/favicon.ico'),
      aspectRatio: 1,
      aspectRatioThumb: 1,
      blurHash: '',
      blurHashThumb: '',
    ),
    info: const GalleryInfo(
      language: ContentLanguage.english,
      originalLanguage: ContentLanguage.english,
      title: 'This is a really really really long title',
      explanation: 'This is an explanation',
    ),
  );

  @override
  Widget build(BuildContext context) {
    return PrimaryShimmer(
      child: GalleryCard(
        item: _mockItem,
        onCardPressed: (context, item) {},
        onSharePressed: (context, item) {},
        onFavoritePressed: (context, item) {},
      ),
    );
  }
}
