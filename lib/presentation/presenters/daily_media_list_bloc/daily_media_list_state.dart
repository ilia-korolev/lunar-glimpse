part of 'daily_media_list_bloc.dart';

@freezed
class DailyMediaListState with _$DailyMediaListState {
  const factory DailyMediaListState({
    required BlocStatus status,
    @Default([]) List<Media> mediaList,
    @Default(false) bool hasReachedMax,
  }) = _DailyMediaListState;

  const DailyMediaListState._();

  @override
  String toString() {
    return '''
DailyMediaListState(
    status: ${status.name},
    mediaList.length: ${mediaList.length},
    hasReachedMax: $hasReachedMax,
  )''';
  }
}
