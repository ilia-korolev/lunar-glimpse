import 'package:flutter/material.dart';
import 'package:flutter_astronomy/domain/_export.dart';
import 'package:flutter_astronomy/presentation/_export.dart';

class LoadingMediaCard extends StatelessWidget {
  const LoadingMediaCard({
    super.key,
  });

  static final media = Media(
    uri: Uri(),
    hdUri: Uri(),
    date: const Date(day: 20, month: 12, year: 2000),
    title: 'This is a really really really long title',
    explanation: 'This is an explanation',
    copyright: 'This is a copyright',
    type: MediaType.image,
  );

  @override
  Widget build(BuildContext context) {
    final mediaCard = MediaCard(
      media: media,
      onCardPressed: (context, media) {},
      onSharePressed: (context, media) {},
      onFavoritePressed: (context, media) {},
    );
    return PrimaryShimmer(
      child: mediaCard,
    );
  }
}
