import 'dart:async';
import 'dart:typed_data';

import 'package:astro_common/astro_common.dart';

abstract interface class RemoteDownloadFileDataSource {
  const RemoteDownloadFileDataSource();

  DownloadFileDto downloadFile({required Uri fileUri});
}

class HttpDownloadFileDataSource implements RemoteDownloadFileDataSource {
  const HttpDownloadFileDataSource({
    required HttpService httpService,
  }) : _httpService = httpService;

  final HttpService _httpService;

  @override
  DownloadFileDto downloadFile({required Uri fileUri}) {
    final progressStreamController = StreamController<double>.broadcast();

    final response = _httpService.get<List<int>>(
      fileUri.toString(),
      onReceiveProgress: (received, total) {
        progressStreamController.add(received / total);
      },
      options: HttpOptions(
        responseType: HttpResponseType.bytes,
        // followRedirects: false,
      ),
    );

    final bytes = response.then(
      (value) => Uint8List.fromList(value.data!),
    );

    return DownloadFileDto(
      bytes: bytes,
      progressStream: progressStreamController.stream,
    );
  }
}
