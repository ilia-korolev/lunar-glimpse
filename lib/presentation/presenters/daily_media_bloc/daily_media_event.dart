part of 'daily_media_bloc.dart';

@freezed
class DailyMediaEvent with _$DailyMediaEvent {
  const factory DailyMediaEvent.fetched() = DailyMediaFetched;
  const factory DailyMediaEvent.refreshed() = DailyMediaRefreshed;
  const factory DailyMediaEvent.favoriteToggled(Media media) =
      DailyMediaFavoriteToggled;
  const factory DailyMediaEvent.triedAgain() = DailyMediaTriedAgain;
}
