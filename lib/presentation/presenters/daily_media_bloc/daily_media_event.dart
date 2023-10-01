part of 'daily_media_bloc.dart';

@freezed
class DailyMediaEvent with _$DailyMediaEvent {
  const factory DailyMediaEvent.fetched() = _Fetched;
  const factory DailyMediaEvent.refreshed() = _Refreshed;
  const factory DailyMediaEvent.favoriteToggled(Media media) = _FavoriteToggled;
}
