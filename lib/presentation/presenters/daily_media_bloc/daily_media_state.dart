part of 'daily_media_bloc.dart';

@freezed
class DailyMediaState with _$DailyMediaState {
  const factory DailyMediaState.initial() = _Initial;

  const factory DailyMediaState.loading() = _Loading;

  const factory DailyMediaState.success({
    required Media media,
  }) = _Success;

  const factory DailyMediaState.failure({
    required String message,
  }) = _Failure;

  const DailyMediaState._();

  @override
  String toString() {
    return when(
      initial: () {
        return 'DailyMediaState.initial()';
      },
      loading: () {
        return 'DailyMediaState.loading()';
      },
      success: (Media media) {
        return '''
DailyMediaState.success(
    date: ${media.date},
    title: ${media.title},
  )''';
      },
      failure: (String message) {
        return '''
DailyMediaState.failure(
    message: $message,
  )''';
      },
    );
  }
}
