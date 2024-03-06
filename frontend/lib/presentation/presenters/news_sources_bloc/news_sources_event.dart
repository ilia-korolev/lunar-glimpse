part of 'news_sources_bloc.dart';

@freezed
class NewsSourcesEvent with _$NewsSourcesEvent {
  const factory NewsSourcesEvent.initialized() = NewsSourcesInitialized;
  const factory NewsSourcesEvent.sourceShowToggled({
    required NewsSourceInput input,
  }) = NewsSourcesSourceShowToggled;
  const factory NewsSourcesEvent.changesApplied() = NewsSourcesChangesApplied;
  const factory NewsSourcesEvent.sourcesChanged({
    required List<NewsSource> sources,
  }) = NewsSourcesSourcesChanged;
}
