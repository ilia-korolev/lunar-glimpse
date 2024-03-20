import 'dart:io';

import 'package:astro_backend/_export.dart';
import 'package:astro_common/astro_common.dart';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  if (context.request.method != HttpMethod.get) {
    return Response(statusCode: HttpStatus.methodNotAllowed);
  }

  final queryParams = context.request.uri.queryParameters;
  final sourceUri = queryParams['source_uri'];

  if (sourceUri == null) {
    return Response(
      statusCode: HttpStatus.badRequest,
      body: 'source_uri must be provided',
    );
  }

  final requestDto = AstroBackendNewsArticlesRequestDto.fromJson(queryParams);

  final newsSourceRepository =
      await context.read<Future<NewsSourceRepository>>();
  final newsArticleRepository =
      await context.read<Future<NewsArticleRepository>>();

  final source = await newsSourceRepository.getSourceByUri(
    sourceUri: requestDto.sourceUri,
  );

  if (source == null) {
    return Response(
      statusCode: HttpStatus.badRequest,
      body: 'The provided source uri is not valid',
    );
  }

  final articles = await newsArticleRepository.fetchNews(source: source);

  return Response.json(body: articles.map((s) => s.toJson()).toList());
}
