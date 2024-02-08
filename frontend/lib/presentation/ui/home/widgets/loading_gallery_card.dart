import 'package:astro_common/astro_common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_astronomy/presentation/_export.dart';

class LoadingGalleryCard extends StatelessWidget {
  const LoadingGalleryCard({
    super.key,
  });

  static final _mockItem = GalleryItem(
    date: const Date(day: 20, month: 12, year: 2000),
    uri: Uri.parse('https://www.google.com/favicon.ico'),
    hdUri: Uri.parse('https://www.google.com/favicon.ico'),
    copyright: 'This is a copyright',
    type: GalleryItemType.image,
    isFavorite: false,
    language: GalleryItemLanguage.english,
    originalLanguage: GalleryItemLanguage.english,
    title: 'This is a really really really long title',
    explanation: 'This is an explanation',
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
