part of 'daily_media_list_bloc.dart';

@freezed
class DailyMediaListEvent with _$DailyMediaListEvent {
  const factory DailyMediaListEvent.fetched() = DailyMediaListFetched;
  const factory DailyMediaListEvent.refreshed() = DailyMediaListRefreshed;
  const factory DailyMediaListEvent.favoriteToggled(Media media) =
      DailyMediaListFavoriteToggled;
  const factory DailyMediaListEvent.triedAgain() = DailyMediaListTriedAgain;
  const factory DailyMediaListEvent.mediaChanged(List<Media> media) =
      DailyMediaListMediaChanged;
}
