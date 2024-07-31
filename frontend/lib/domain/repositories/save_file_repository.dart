import 'package:astro_common/astro_common.dart';
import 'package:file_saver/file_saver.dart';
import 'package:frontend/core/_export.dart';
import 'package:path/path.dart' as path;

abstract interface class SaveFileRepository {
  const SaveFileRepository();

  SaveFileResult save({required Uri fileUri});
}

class SaveFileRepositoryImpl implements SaveFileRepository {
  const SaveFileRepositoryImpl({
    required RemoteDownloadFileDataSource remoteDownloadFileDataSource,
    required FileSaver fileSaver,
  })  : _remoteDownloadFileDataSource = remoteDownloadFileDataSource,
        _fileSaver = fileSaver;

  final RemoteDownloadFileDataSource _remoteDownloadFileDataSource;
  final FileSaver _fileSaver;

  @override
  SaveFileResult save({required Uri fileUri}) {
    final dto = _remoteDownloadFileDataSource.downloadFile(
      fileUri: fileUri,
    );

    final filePath = dto.bytes.then(
      (bytes) async {
        final fileName = path.basenameWithoutExtension(fileUri.path);
        final extension = path.extension(fileUri.path);

        if (Platform.isAndroid || Platform.isIOS) {
          return _fileSaver.saveAs(
            name: fileName,
            bytes: bytes,
            ext: extension,
            mimeType: _getMimeType(extension: extension),
          );
        }

        return _fileSaver.saveFile(
          name: fileName,
          bytes: bytes,
          ext: extension,
          mimeType: _getMimeType(extension: extension),
        );
      },
    );

    return SaveFileResult(
      path: filePath,
      progress: dto.progressStream,
    );
  }

  MimeType _getMimeType({required String extension}) {
    switch (extension.toLowerCase()) {
      case '.jpeg':
      case '.jpg':
        return MimeType.jpeg;
      case '.png':
        return MimeType.png;
      case '.gif':
        return MimeType.gif;
      default:
        throw UnsupportedError('This extension is not supported: $extension');
    }
  }
}

class SaveFileResult {
  SaveFileResult({
    required this.path,
    required this.progress,
  });

  Future<String?> path;
  Stream<double> progress;
}
