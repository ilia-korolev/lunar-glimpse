import 'dart:io';

import 'package:astro_backend/_export.dart';
import 'package:astro_common/astro_common.dart';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.get) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  try {
    final queryParams = context.request.uri.queryParameters;

    if (queryParams['start_date'] == null || queryParams['end_date'] == null) {
      return Response(
        statusCode: HttpStatus.badRequest,
        body: 'start_date and end_date must be provided',
      );
    }

    final requestDto = AstroBackendGalleryItemsRequestDto.fromJson(queryParams);

    if (requestDto.endDate.compareTo(requestDto.startDate) < 0) {
      return Response(
        statusCode: HttpStatus.badRequest,
        body: 'start_date cannot be after end_date',
      );
    }

    final galleryRepository = await context.read<Future<GalleryRepository>>();
    final items = await galleryRepository.getItems(
      startDate: requestDto.startDate,
      endDate: requestDto.endDate,
    );

    return Response.json(body: items.map((i) => i.toJson()).toList());
  } on FormatException catch (_) {
    return Response(
      statusCode: HttpStatus.badRequest,
      body: 'Invalid date format was provided',
    );
  }
}
