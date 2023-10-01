part of 'daily_media_bloc.dart';

enum DailyMediaStatus {
  initial,
  loading,
  success,
  failure;

  bool get isInitial => this == DailyMediaStatus.initial;
  bool get isLoading => this == DailyMediaStatus.loading;
  bool get isSuccess => this == DailyMediaStatus.success;
  bool get isFailure => this == DailyMediaStatus.failure;
}

@freezed
class DailyMediaState with _$DailyMediaState {
  const factory DailyMediaState({
    required DailyMediaStatus status,
    @Default([]) List<Media> mediaList,
    @Default(0) int page,
    @Default(false) bool hasReachedMax,
  }) = _DailyMediaState;

  const DailyMediaState._();

  @override
  String toString() {
    return '''
DailyMediaState(
  status: ${status.name},
  mediaList.length: ${mediaList.length},
  page: $page,
  hasReachedMax: $hasReachedMax,
)
''';
  }
}
