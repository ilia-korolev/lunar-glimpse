part of 'news_bloc.dart';

@freezed
class NewsEvent with _$NewsEvent {
  const factory NewsEvent.fetched() = NewsFetched;
  const factory NewsEvent.refreshed() = NewsRefreshed;
  const factory NewsEvent.triedAgain() = NewsTriedAgain;
}
