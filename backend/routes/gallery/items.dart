import 'dart:io';

import 'package:astro_backend/_export.dart';
import 'package:astro_common/astro_common.dart';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.get) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  final startDateStr = context.request.uri.queryParameters['start_date'];
  final endDateStr = context.request.uri.queryParameters['end_date'];

  if (startDateStr == null) {
    return Response(
      statusCode: HttpStatus.badRequest,
      body: 'start_date was not provided',
    );
  }

  if (endDateStr == null) {
    return Response(
      statusCode: HttpStatus.badRequest,
      body: 'end_date was not provided',
    );
  }

  try {
    final startDate = Date.parse(startDateStr);
    final endDate = Date.parse(endDateStr);

    if (endDate.compareTo(startDate) < 0) {
      return Response(
        statusCode: HttpStatus.badRequest,
        body: 'start_date cannot be after end_date',
      );
    }

    final galleryRepository = await context.read<Future<GalleryRepository>>();
    final items = await galleryRepository.getItems(
      startDate: startDate,
      endDate: endDate,
    );

    return Response.json(body: items.map((i) => i.toJson()).toList());
  } on FormatException catch (_) {
    return Response(
      statusCode: HttpStatus.badRequest,
      body: 'Invalid format of data was provided',
    );
  }
}
