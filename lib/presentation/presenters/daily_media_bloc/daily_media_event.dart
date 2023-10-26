part of 'daily_media_bloc.dart';

@freezed
class DailyMediaEvent with _$DailyMediaEvent {
  const factory DailyMediaEvent.fetched({required Date date}) =
      DailyMediaFetched;
  const factory DailyMediaEvent.favoriteToggled() = DailyMediaFavoriteToggled;
  const factory DailyMediaEvent.triedAgain() = DailyMediaTriedAgain;
  const factory DailyMediaEvent.mediaChanged(List<Media> media) =
      DailyMediaMediaChanged;
}
