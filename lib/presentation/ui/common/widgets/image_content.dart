import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_astronomy/presentation/_export.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ImageContent extends StatelessWidget {
  const ImageContent({
    required this.uri,
    super.key,
  });

  final String uri;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return CachedNetworkImage(
      imageUrl: uri,
      fit: BoxFit.cover,
      progressIndicatorBuilder: (context, url, downloadProgress) {
        return PrimaryShimmer(
          child: ColoredBox(
            color: theme.primaryColor,
          ),
        );
      },
      errorWidget: (context, url, error) {
        // TODO(ilia-korolev): change this to something more suitable
        return const FaIcon(FontAwesomeIcons.circleExclamation);
      },
    );
  }
}
