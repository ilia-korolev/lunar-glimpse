import 'dart:io';

import 'package:astro_backend/_export.dart';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.get) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  final galleryRepository = await context.read<Future<GalleryRepository>>();
  final latest = await galleryRepository.getLatestItem();

  return Response.json(body: latest.toJson());
}
