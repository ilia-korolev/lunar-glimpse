part of 'news_bloc.dart';

@freezed
class NewsState with _$NewsState {
  const factory NewsState({
    required BlocStatus status,
    @Default([]) List<Article> articles,
  }) = _NewsState;

  const NewsState._();

  @override
  String toString() {
    return '''
NewsState(
    status: ${status.name},
    articles.length: ${articles.length},
  )''';
  }
}
