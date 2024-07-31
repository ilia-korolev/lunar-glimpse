abstract interface class HttpService {
  Future<HttpResponse<T>> get<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    HttpOptions? options,
    void Function(int, int)? onReceiveProgress,
  });

  Future<HttpResponse<T>> post<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    HttpOptions? options,
    void Function(int, int)? onReceiveProgress,
  });
}

class HttpResponse<T> {
  const HttpResponse({
    this.data,
  });

  final T? data;
}

class HttpOptions {
  HttpOptions({
    this.responseType,
    this.contentType,
    this.followRedirects,
    this.validateStatus,
    this.headers,
  });

  final HttpResponseType? responseType;
  final String? contentType;
  final bool? followRedirects;
  final bool Function(int?)? validateStatus;
  final Map<String, String?>? headers;
}

enum HttpResponseType {
  json,
  stream,
  plain,
  bytes,
}
