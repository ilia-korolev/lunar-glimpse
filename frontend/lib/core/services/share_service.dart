import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_astronomy/core/_export.dart';
import 'package:share_plus/share_plus.dart';

abstract class ShareService {
  const ShareService();

  Future<void> shareUri({
    required Uri uri,
    required BuildContext context,
  });
}

class ShareServiceImpl implements ShareService {
  const ShareServiceImpl({
    required this.deviceInfo,
  });

  final DeviceInfoPlugin deviceInfo;

  @override
  Future<void> shareUri({
    required Uri uri,
    required BuildContext context,
  }) async {
    if (Platform.isAndroid || (Platform.isIOS && !(await _isIpad()))) {
      await Share.shareUri(uri);

      return;
    }

    if (!context.mounted) {
      return;
    }

    final box = context.findRenderObject() as RenderBox?;
    final position = box!.localToGlobal(Offset.zero) & box.size;

    await Share.share(
      uri.toString(),
      sharePositionOrigin: position,
    );
  }

  Future<bool> _isIpad() async {
    final info = await deviceInfo.iosInfo;

    return info.model.toLowerCase().contains('ipad');
  }
}
