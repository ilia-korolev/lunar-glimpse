import 'package:flutter/material.dart';
import 'package:flutter_astronomy/domain/_export.dart';
import 'package:flutter_astronomy/presentation/_export.dart';

class LoadingGalleryCard extends StatelessWidget {
  const LoadingGalleryCard({
    super.key,
  });

  static final _mockItem = GalleryItem(
    uri: Uri.parse('https://www.google.com/favicon.ico'),
    hdUri: Uri.parse('https://www.google.com/favicon.ico'),
    date: const Date(day: 20, month: 12, year: 2000),
    title: 'This is a really really really long title',
    explanation: 'This is an explanation',
    copyright: 'This is a copyright',
    type: GalleryItemType.image,
  );

  @override
  Widget build(BuildContext context) {
    final galleryCard = GalleryCard(
      item: _mockItem,
      onCardPressed: (context, item) {},
      onSharePressed: (context, item) {},
      onFavoritePressed: (context, item) {},
    );
    return PrimaryShimmer(
      child: galleryCard,
    );
  }
}
