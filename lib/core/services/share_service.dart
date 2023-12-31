import 'dart:io';

import 'package:share_plus/share_plus.dart';

abstract class ShareService {
  const ShareService();

  Future<void> shareUri({required Uri uri});
}

class ShareServiceImpl implements ShareService {
  const ShareServiceImpl();

  @override
  Future<void> shareUri({required Uri uri}) async {
    if (Platform.isAndroid || Platform.isIOS) {
      await Share.shareUri(uri);

      return;
    }

    await Share.share(uri.toString());
  }
}
