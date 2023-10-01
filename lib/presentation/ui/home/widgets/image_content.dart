import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageContent extends StatelessWidget {
  const ImageContent({
    required this.uri,
    super.key,
  });

  final String uri;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: uri,
      fit: BoxFit.cover,
      progressIndicatorBuilder: (context, url, downloadProgress) {
        return Center(
          child: CircularProgressIndicator(
            value: downloadProgress.progress,
          ),
        );
      },
      errorWidget: (context, url, error) {
        return const Icon(Icons.error);
      },
    );
  }
}
