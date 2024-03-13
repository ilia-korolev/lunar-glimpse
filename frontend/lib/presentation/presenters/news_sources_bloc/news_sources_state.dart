part of 'news_sources_bloc.dart';

@freezed
class NewsSourcesState with _$NewsSourcesState {
  const factory NewsSourcesState({
    required BlocStatus status,
    @Default([]) List<NewsSourceInput> inputs,
  }) = _NewsSourcesState;

  const NewsSourcesState._();

  bool get isPure => !inputs.any((i) => i.isChanged);
  bool get hasShownSources => inputs.any((i) => i.isShown ^ i.isChanged);

  @override
  String toString() {
    return '''
NewsSourcesState(
    status: ${status.name},
    inputs.length: ${inputs.length},
  )''';
  }
}

@freezed
class NewsSourceInput with _$NewsSourceInput {
  const factory NewsSourceInput({
    required NewsSource source,
    @Default(false) bool isChanged,
  }) = _NewsSourceInput;

  const NewsSourceInput._();

  bool get isShown => source.isShown ^ isChanged;
}
