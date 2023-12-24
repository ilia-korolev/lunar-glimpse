import 'dart:typed_data';

class DownloadFileDto {
  DownloadFileDto({
    required this.bytes,
    required this.progressStream,
  });

  final Future<Uint8List> bytes;
  final Stream<double> progressStream;
}
