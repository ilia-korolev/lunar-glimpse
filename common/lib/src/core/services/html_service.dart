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
  });

  final HttpResponseType? responseType;
}

enum HttpResponseType {
  json,
  stream,
  plain,
  bytes,
}
