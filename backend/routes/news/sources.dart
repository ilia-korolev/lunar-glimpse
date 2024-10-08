import 'dart:io';

import 'package:astro_backend/_export.dart';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.get) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  final newsSourceRepository =
      await context.read<Future<NewsSourceRepository>>();
  final sources = await newsSourceRepository.getSources();

  return Response.json(body: sources.map((s) => s.toJson()).toList());
}
