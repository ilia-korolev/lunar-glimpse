import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_astronomy/domain/_export.dart';
import 'package:flutter_astronomy/presentation/_export.dart';
import 'package:flutter_astronomy/presentation/ui/home/widgets/image_content.dart';
import 'package:get_it/get_it.dart';

class DailyMediaPage extends StatefulWidget {
  const DailyMediaPage({
    required this.date,
    this.media,
    super.key,
  });

  final Date date;
  final Media? media;

  @override
  State<DailyMediaPage> createState() => _DailyMediaPageState();
}

class _DailyMediaPageState extends State<DailyMediaPage> {
  final DailyMediaBloc _bloc = GetIt.instance();

  @override
  Widget build(BuildContext context) {
    // TODO(ilia-korolev): implement a desktop view

    final media = _bloc.state.mediaList.firstWhereOrNull(
      (m) => m.date == widget.date,
    )!;

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Hero(
          tag: media,
          child: ImageContent(
            uri: media.uri.toString(),
          ),
        ),
      ),
    );
  }
}
